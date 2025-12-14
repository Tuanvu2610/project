package vn.edu.nlu.fit.up.dao;

import org.jdbi.v3.core.Jdbi;
import vn.edu.nlu.fit.up.model.Product;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class ProductDao extends BaseDao {
    static Map<Integer, Product> data = new HashMap<>();
    public Product getProduct(int id) {
        return get().withHandle(h -> h.createQuery("SELECT * FROM products where id=:id").bind("id", id).mapToBean(Product.class).stream().findFirst().orElse(null));
    }
    public List<Product> getListProduct() {
        Jdbi jdbi = get();
        if (jdbi == null) {
            throw new RuntimeException("JDBI IS NULL");
        }
        return jdbi.withHandle(h ->
                h.createQuery("SELECT * FROM products")
                        .mapToBean(Product.class)
                        .list()
        );
    }

}
