package vn.edu.nlu.fit.up.service;

import vn.edu.nlu.fit.up.dao.AuthDao;
import vn.edu.nlu.fit.up.model.User;

public class AuthService {
    AuthDao authDao = new AuthDao();

    public User login(String username, String pass) {
        User u = authDao.getUserByUsername(username);
        if(u!=null && u.getPassword().equals(pass)){
            u.setPassword(null);
            return u;
        }
        return null;
    }

    public boolean register(User user) {
        return authDao.registerUser(user);
    }

    public boolean isUsernameExist(String username) {
        return authDao.isUsernameExist(username);
    }

    public User findByEmail(String email) {
        return authDao.findByEmail(email);
    }
}
