package vn.edu.nlu.fit.up.dao;

import org.jdbi.v3.core.Jdbi;
import vn.edu.nlu.fit.up.model.Product;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class ProductDao extends BaseDao {
    static Map<Integer, Product> data = new HashMap<>();
    public Product getProduct(int id) {
        return get().withHandle(h -> h.createQuery("SELECT * FROM products where id=:id").bind("id", id).mapToBean(Product.class).stream().findFirst().orElse(null));
    }

    public List<Product> getProductsByCategoryId(int categoryId) {
        List<Product> list = new ArrayList<>();
        String sql = "SELECT * FROM products WHERE category_id = ?";

        try {Connection conn = new DBContext().getConnection();
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setInt(1, categoryId);
            ResultSet rs = ps.executeQuery();

            while (rs.next()) {
                Product p = new Product(
                        rs.getInt("id"),
                        rs.getString("name"),
                        rs.getString("img"),
                        rs.getInt("category_id"),
                        rs.getString("material"),
                        rs.getString("size"),
                        rs.getInt("price_sale"),
                        rs.getInt("price_origin")
                );
                list.add(p);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return list;
    }

    public List<Product> getListProduct() {
        Jdbi jdbi = get();
        if (jdbi == null) {
            throw new RuntimeException("JDBI IS NULL");
        }
        return jdbi.withHandle(h ->
                h.createQuery("SELECT * FROM products").mapToBean(Product.class).list()
        );
    }

}
