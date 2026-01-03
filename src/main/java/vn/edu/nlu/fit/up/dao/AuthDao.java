package vn.edu.nlu.fit.up.dao;

import vn.edu.nlu.fit.up.model.User;

public class AuthDao extends BaseDao {
    public User getUserByUsername(String username) {
        return get().withHandle(h ->
                h.createQuery("select * from users where username = :username")
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
}
