package vn.edu.nlu.fit.up.dao;

import vn.edu.nlu.fit.up.model.User;

public class AuthDao extends BaseDao {
    public User getUserByUsername(String username) {
        return get().withHandle(h ->
                h.createQuery("select a.*, u.name, u.date_of_birth, u.phone, u.sex, u.address_id, u.img, u.email, ad.full_address " +
                                "from accounts a " +
                                "join users u on u.id = a.user_id " +
                                "join address ad on ad.id = u.address_id " +
                                "where a.username = :username")
                        .bind("username", username)
                        .mapToBean(User.class).findFirst().orElse(null));
    }

    public boolean isUsernameExist(String username) {
        return get().withHandle(h ->
                h.createQuery("select count(*) from users where username = :username")
                        .bind("username", username)
                        .mapTo(Integer.class)
                        .one() > 0);
    }

    // Phương thức đăng ký user
    public boolean registerUser(User user) {
        String sql = "insert into users (name, username, password, firstname, lastname, email, phone, sex, address_id, img)" +
                "value (:name, :username, :password, :firstname, :lastname, :email, :phone, :sex, :address_id, :img)";

        return get().withHandle(h -> h.createUpdate(sql)
                .bind("name", user.getName())
                .bind("username", user.getUsername())
                .bind("password", user.getPassword())
                .bind("firstname", user.getFirstname())
                .bind("lastname", user.getLastname())
                .bind("email", user.getEmail())
                .bind("phone", user.getPhone())
                .bind("sex", user.getSex())
                .bind("address_id", user.getAddress_id())
                .bind("img", user.getImg())
                .execute() >0);
    }

    public User findByEmail(String email) {
        return get().withHandle(h -> h.createQuery("select * from users where email = :email")
                .bind("email", email)
                .mapToBean(User.class).findFirst().orElse(null));
    }

    static void main() {
        AuthDao authDao = new AuthDao();
        System.out.println(authDao.getUserByUsername("user_test_2"));
    }
}
