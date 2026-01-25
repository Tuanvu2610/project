package vn.edu.nlu.fit.up.dao;
import vn.edu.nlu.fit.up.model.Account;
import vn.edu.nlu.fit.up.model.User;
import java.util.List;
import java.sql.Date;


public class AccountDao extends BaseDao{
    public List<Account> getAccount() {
        return get().withHandle(h ->  h.createQuery("SELECT * FROM accounts").mapToBean(Account.class).list());
    }
    public int totalAccount() {
        return get().withHandle(h ->  h.createQuery("SELECT * FROM accounts").mapToBean(Account.class).list().size());
    }
    public int countAccountByStatus(String status) {
        return get().withHandle(h ->
                h.createQuery(
                                "SELECT COUNT(*) FROM accounts WHERE status = :status"
                        )
                        .bind("status", status)
                        .mapTo(Integer.class)
                        .one()
        );
    }
    public Account getAccountByUserId(int id) {
        String sql = """
        SELECT
            a.id            AS acc_id,
            a.user_id,
            a.username,
            a.password,
            a.role,
            a.status,
            a.registration_date,
            u.id            AS user_id_u,
            u.name,
            u.phone,
            u.email,
            u.sex,
            u.address_id,
            u.img,
            u.date_of_birth
        FROM accounts a
        JOIN users u ON a.user_id = u.id
        WHERE u.id = :id
    """;

        return get().withHandle(h ->
                h.createQuery(sql)
                        .bind("id", id)
                        .map((rs, ctx) -> {
                            Account acc = new Account();
                            acc.setId(rs.getInt("acc_id"));
                            acc.setUser_id(rs.getInt("user_id"));
                            acc.setUsername(rs.getString("username"));
                            acc.setPassword(rs.getString("password"));
                            acc.setRole(rs.getString("role"));
                            acc.setStatus(rs.getString("status"));

                            acc.setRegistration_date(
                                    rs.getDate("registration_date").toLocalDate()
                            );

                            User user = new User();
                            user.setId(rs.getInt("user_id_u"));
                            user.setName(rs.getString("name"));
                            user.setPhone(rs.getString("phone"));
                            user.setEmail(rs.getString("email"));
                            user.setSex(rs.getString("sex"));
                            user.setAddress_id(rs.getInt("address_id"));
                            user.setImg(rs.getString("img"));
                            Date dob = rs.getDate("date_of_birth");
                            if (dob != null) {
                                user.setDate_of_birth(dob.toLocalDate());
                            }
                            acc.setUser(user);

                            return acc;
                        })
                        .findOne()
                        .orElse(null)
        );
    }


    public List<Account> getAccountByPage(int page, int pageSize) {
        int offset = (page - 1) * pageSize;

        return get().withHandle(h ->
                h.createQuery("""
           SELECT a.*, u.name, u.date_of_birth, u.phone, u.sex, u.address_id, u.img, u.email
           FROM accounts a
           JOIN users u on a.user_id = u.id
          LIMIT :limit OFFSET :offset
        """)
                        .bind("limit", pageSize)
                        .bind("offset", offset)
                        .mapToBean(Account.class)
                        .list()
        );
    }
    public int updateAcc(User user, int id) {
        return get().withHandle(handle ->
                handle.createUpdate(
                                "UPDATE users " +
                                        "SET name = :name, email = :email, phone = :phone, sex = :sex " +
                                        "WHERE id = :id"
                        )
                        .bind("id", id)
                        .bind("name", user.getName())
                        .bind("email", user.getEmail())
                        .bind("phone", user.getPhone())
                        .bind("sex",user.getSex())
                        .execute()
        );
    }
    public int delete(int id) {
        return get().withHandle(handle ->
                handle.createUpdate("""
            DELETE FROM accounts
            WHERE user_id = :id
        """)
                        .bind("id", id)
                        .execute()
        );
    }

    public int editAcc(Account acc, User user, int id) {
        return get().withHandle(handle ->
                handle.createUpdate("""
                                 UPDATE accounts a
                                 JOIN users u on a.user_id = u.id
                                 SET u.phone = :phone, u.email = :email,
                                  u.date_of_birth = :date_of_birth, a.role = :role ,  a.status = :status WHERE a.user_id = :id
                                """
                        )
                        .bind("id", id)
                        .bind("phone", user.getPhone())
                        .bind("email", user.getEmail())
                        .bind("date_of_birth", user.getDate_of_birth())
                        .bind("role",acc.getRole())
                        .bind("status",acc.getStatus())
                        .execute()
        );
    }
    public int addUser(Account acc, User user) {
        return get().inTransaction(handle -> {
            int newUserId = handle.createUpdate("""
                INSERT INTO users (name, email, phone, sex, date_of_birth)
                VALUES (:name,:email, :phone, :sex, :dob)
                """)
                    .bind("name", user.getName())
                    .bind("email", user.getEmail())
                    .bind("phone", user.getPhone())
                    .bind("sex", user.getSex())
                    .bind("dob", user.getDate_of_birth())
                    .executeAndReturnGeneratedKeys("id")
                    .mapTo(Integer.class)
                    .one();
            handle.createUpdate("""
                            INSERT INTO accounts (user_id, username, password, role, status, registration_date)
                            VALUES (:uid, :username, :password, :role, :status, CURDATE());
                """)
                    .bind("uid", newUserId)
                    .bind("username", acc.getUsername())
                    .bind("password", acc.getPassword())
                    .bind("role", acc.getRole())
                    .bind("status", acc.getStatus())
                    .execute();

            return (newUserId > 0 ? 1 : 0);
        });
    }
    public boolean existsUsername(String username) {
        return get().withHandle(handle ->
                handle.createQuery(
                                "SELECT 1 FROM accounts WHERE username = :username LIMIT 1"
                        )
                        .bind("username", username)
                        .mapTo(Integer.class)
                        .findFirst()
                        .isPresent()
        );
    }
    public Account login(String username, String password) {
        return get().withHandle(handle ->
                handle.createQuery("""
            SELECT a.*, u.name, u.phone, u.date_of_birth
            FROM accounts a
            JOIN users u ON a.user_id = u.id
            WHERE a.username = :username
              AND a.password = :password
              AND a.status = 'active'
        """)
                        .bind("username", username)
                        .bind("password", password)
                        .mapToBean(Account.class)
                        .findOne()
                        .orElse(null)
        );
    }

//    static void main() {
//        AccountDao dao = new AccountDao();
//        Account i = dao.getAccountById(8);
//        System.out.println(i);
//    }
}
