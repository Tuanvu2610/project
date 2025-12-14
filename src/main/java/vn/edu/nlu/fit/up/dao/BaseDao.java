package vn.edu.nlu.fit.up.dao;

import com.mysql.cj.jdbc.MysqlDataSource;
import org.jdbi.v3.core.Jdbi;

import java.sql.SQLException;

public abstract class BaseDao {
    private Jdbi jdbi;

    protected Jdbi get() {
        if (jdbi == null) {
            makeConnect();
        }
        return jdbi;
    }

    private void makeConnect() {
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            MysqlDataSource src = new MysqlDataSource();
            String url = "jdbc:mysql://"
                    + DBPorperties.host() + ":"
                    + DBPorperties.port() + "/"
                    + DBPorperties.dbname()
                    + "?" + DBPorperties.option();
            src.setURL(url);
            src.setUser(DBPorperties.username());
            src.setPassword(DBPorperties.password());
            src.setUseSSL(false);
            src.setAllowPublicKeyRetrieval(true);
            jdbi = Jdbi.create(src);
            System.out.println("JDBI CREATED SUCCESSFULLY");
        } catch (Exception e) {
            e.printStackTrace();
            throw new RuntimeException("CANNOT CREATE JDBI", e);
        }
    }
}
