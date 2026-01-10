package vn.edu.nlu.fit.up.service;

import vn.edu.nlu.fit.up.dao.ProductDao;
import vn.edu.nlu.fit.up.model.Product;
import vn.edu.nlu.fit.up.model.Reviews;

import java.util.List;

public class ProductService {
    ProductDao pdao = new ProductDao();

    public List<Product> getListProduct() {
        return pdao.getListProduct();
    }
    public List<Product> getByCategory(int category_id) {
        return pdao.getByCategory(category_id);
    }
    public List<Product> disProduct() {
        return pdao.discountProduct();
    }

    public List<Product> discountList() {
        return pdao.discountList();
    }
    public Product getProduct(int id) {
        return pdao.getProduct(id);
    }
    public List<Reviews> getReviewByID(int product_id) {
        return pdao.getReviewByID(product_id);
    }

    public int totalReview(int id) {
        return pdao.totalReview(id);
    }
    public int totalReviewByStar(int stars, int product_id) {
        return pdao.totalReviewByStar(stars, product_id);
    }

    public int totalProductSold(int id) {
        return pdao.totalProductSold(id);
    }

    public List<Product> search(String keyword) {
        return pdao.search(keyword);
    }

    public List<Product> getDiscountGomThoCung() {
        return pdao.getDiscountGomThoCung();
    }

    public List<Product> getDiscountGomQuaTang() {
        return pdao.getDiscountGomQuaTang();
    }

    public void addProduct(Product p) {
        pdao.addProduct(p);
    }

}
