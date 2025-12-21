package vn.edu.nlu.fit.up.service;

import vn.edu.nlu.fit.up.dao.ProductDao;
import vn.edu.nlu.fit.up.model.Product;

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
}
