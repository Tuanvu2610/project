package vn.edu.nlu.fit.up.dao;

import org.jdbi.v3.core.Jdbi;
import vn.edu.nlu.fit.up.model.Category;
import vn.edu.nlu.fit.up.model.Product;
import vn.edu.nlu.fit.up.model.Reviews;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class ProductDao extends BaseDao {
    public Product getProduct(int id) {
        return get().withHandle(h -> h.createQuery("SELECT * FROM products where id=:id").bind("id", id).mapToBean(Product.class).stream().findFirst().orElse(null));
    }

    public List<Product> getProductsByCategoryId(int category_id) {
        return get().withHandle(h -> h.createQuery("select * from products where category_id = :cid").bind("cid", category_id).mapToBean(Product.class).list());
    }

    public Product getDiscountProducts(int category_id) {
        return get().withHandle(h -> h.createQuery("select * from products where category_id = :cid and price_sale < price_origin limit 1").bind("cid", category_id).mapToBean(Product.class).findOne().orElse(null));
    }

    public List<Product> getDiscountGomThoCung() {
        List<Product> list = new ArrayList<>();
        for (int category_id = 15; category_id <= 19; category_id++) {
            Product p = getDiscountProducts(category_id);
            if (p != null) {
                list.add(p);
            }
        }
        return list;
    }

    public List<Product> getDiscountGomQuaTang() {
        List<Product> list = new ArrayList<>();
        for (int category_id = 20; category_id <= 23; category_id++) {
            Product p = getDiscountProducts(category_id);
            if (p != null) {
                list.add(p);
            }
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
    public List<Product> getByCategory(int category_id) {
        return get().withHandle(h ->
                h.createQuery("SELECT * FROM products WHERE category_id = :category_id")
                        .bind("category_id", category_id)
                        .mapToBean(Product.class)
                        .list()
        );
    }
    public List<Product> discountProduct() {
        return get().withHandle(h ->
                h.createQuery("""
                SELECT *
                FROM products
                WHERE category_id IN (5,6,7,8,9)
                AND price_sale < price_origin
                ORDER BY ((price_origin - price_sale) * 100.0 / price_origin) DESC
            """)
                        .mapToBean(Product.class)
                        .list()
        );
    }
    public List<Product> discountList() {
        return get().withHandle(h ->
                h.createQuery("""
                SELECT *
                FROM products
                WHERE price_sale < price_origin
                ORDER BY ((price_origin - price_sale) * 100.0 / price_origin) DESC
                """)    .mapToBean(Product.class)
                        .list()
        );
    }
    public List<Reviews> getReviewByID(int product_id) {
        return get().withHandle(h -> h.createQuery("SELECT r.*, u.name, u.img FROM reviews r join users u on u.id = r.user_id where product_id=:product_id")
                .bind("product_id", product_id)
                .mapToBean(Reviews.class)
                .list());
    }
    public int totalReview(int product_id) {
        return get().withHandle(h -> h.createQuery("SELECT r.*, u.name, u.img FROM reviews r join users u on u.id = r.user_id where product_id=:product_id")
                .bind("product_id", product_id)
                .mapToBean(Reviews.class)
                .list()
                .size());
    }
    public int totalReviewByStar(int stars, int product_id) {
        return get().withHandle(h -> h.createQuery("SELECT r.*, u.name, u.img FROM reviews r join users u on u.id = r.user_id where stars=:stars and product_id=:product_id")
                .bind("stars", stars)
                .bind("product_id", product_id)
                .mapToBean(Reviews.class)
                .list()
                .size());
    }
    public int totalProductSold(int product_id) {
        return get().withHandle(h -> h.createQuery("SELECT SUM(quantity) AS da_ban FROM order_details WHERE product_id =:product_id")
                .bind("product_id", product_id)
                .mapTo(Integer.class)
                .findOne()
                .orElse(0));
    }
    public List<Product> search(String keyword) {
        return get().withHandle(h ->
                h.createQuery("SELECT p.* FROM products p JOIN categories c on c.id =p.category_id  WHERE p.name LIKE :kw and c.name like :kw")
                        .bind("kw", "%" + keyword + "%")
                        .mapToBean(Product.class)
                        .list()
        );
    }

//    static void main() {
//        ProductDao dao = new ProductDao();
//        int i = dao.totalProductSold(5);
//        System.out.println(i);
//    }
}
