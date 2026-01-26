package vn.edu.nlu.fit.up.dao;

import vn.edu.nlu.fit.up.model.Account;
import vn.edu.nlu.fit.up.model.User;

public class AuthDao extends BaseDao {
    public Account getUserByUsername(String username) {
        return get().withHandle(h ->
                h.createQuery("select a.*, u.name, u.date_of_birth, u.phone, u.sex, u.address_id, u.img, u.email, ad.full_address " +
                                "from accounts a " +
                                "join users u on u.id = a.user_id " +
                                "join address ad on ad.id = u.address_id " +
                                "where a.username = :username")
                        .bind("username", username)
                        .mapToBean(Account.class).findFirst().orElse(null));
    }

    public boolean isUsernameExist(String username) {
        return get().withHandle(h ->
                h.createQuery("select count(*) from accounts where username = :username")
                        .bind("username", username)
                        .mapTo(Integer.class)
                        .one() > 0);
    }

    // Phương thức đăng ký user
    public boolean register(Account acc, User u) {
        return get().inTransaction(h -> {
            String insertUser = """
            insert into users (name, email, phone, sex, address_id, img)
            values (:name, :email, :phone, :sex, :address_id, :img)
        """;

            int userId = h.createUpdate(insertUser)
                    .bind("name", u.getName())
                    .bind("email", u.getEmail())
                    .bind("phone", u.getPhone())
                    .bind("sex", u.getSex())
                    .bind("address_id", u.getAddress_id())
                    .bind("img", u.getImg())
                    .executeAndReturnGeneratedKeys("id")
                    .mapTo(int.class)
                    .one();

            String insertAcc = """
            insert into accounts (user_id, username, password, role, status, registration_date)
            values (:user_id, :username, :password, :role, :status, :registration_date)
        """;

            int result = h.createUpdate(insertAcc)
                    .bind("user_id", userId)
                    .bind("username", acc.getUsername())
                    .bind("password",acc.getPassword())
                    .bind("role", acc.getRole())
                    .bind("status", acc.getStatus())
                    .bind("registration_date", acc.getRegistration_date())
                    .execute();

            return result > 0;
        });
    }

    public User findByEmail(String email) {
        return get().withHandle(h -> h.createQuery("select * from users where email = :email")
                .bind("email", email)
                .mapToBean(User.class).findFirst().orElse(null));
    }
    public String findById(int id) {
        return get().withHandle(h ->
                h.createQuery("""
            SELECT full_address
            FROM addresses
            WHERE id = :id
            """)
                        .bind("id", id)
                        .mapTo(String.class)
                        .findFirst()
                        .orElse(null)
        );
    }


    static void main() {
        AuthDao authDao = new AuthDao();
        System.out.println(authDao.getUserByUsername("user_test_2"));
    }
}
