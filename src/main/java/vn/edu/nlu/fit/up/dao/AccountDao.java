package vn.edu.nlu.fit.up.dao;
import vn.edu.nlu.fit.up.model.Account;

import java.util.List;

public class AccountDao extends BaseDao{
    public List<Account> getAccount() {
        return get().withHandle(h ->  h.createQuery("SELECT * FROM accounts").mapToBean(Account.class).list());
    }
    public int totalAccount() {
        return get().withHandle(h ->  h.createQuery("SELECT * FROM accounts").mapToBean(Account.class).list().size());
    }
    public int getAccountByStatus(String status) {
        return get().withHandle(h ->
                h.createQuery("SELECT * FROM accounts WHERE status like :status")
                        .bind("status", "%" + status + "%")
                        .mapToBean(Account.class)
                        .list().size()
        );
    }
    public Account getAccountById(int id) {
        return get().withHandle(handle ->
                handle.createQuery("SELECT a.*, u.phone, u.date_of_birth FROM accounts a join users u on a.user_id = u.id WHERE a.id = :id")
                        .bind("id", id)
                        .mapToBean(Account.class)
                        .findOne()
                        .orElse(null)
        );
    }

        static void main() {
        AccountDao dao = new AccountDao();
        Account i = dao.getAccountById(8);
        System.out.println(i);
    }

}
