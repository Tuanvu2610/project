package vn.edu.nlu.fit.up.service;

import vn.edu.nlu.fit.up.dao.AuthDao;
import vn.edu.nlu.fit.up.model.Account;
import vn.edu.nlu.fit.up.model.User;

public class AuthService {
    AuthDao authDao = new AuthDao();

    public Account login(String username, String pass) {
        Account acc = authDao.getUserByUsername(username);
        if(acc!=null && acc.getPassword().equals(pass)){
            acc.setPassword(null);
            return acc;
        }
        return null;
    }

    public boolean register(Account acc, User u) {
        return authDao.register(acc, u);
    }

    public boolean isUsernameExist(String username) {
        return authDao.isUsernameExist(username);
    }

    public User findByEmail(String email) {
        return authDao.findByEmail(email);
    }
}
