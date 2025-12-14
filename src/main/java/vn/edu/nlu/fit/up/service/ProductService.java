package vn.edu.nlu.fit.up.service;

import vn.edu.nlu.fit.up.dao.ProductDao;
import vn.edu.nlu.fit.up.model.Product;

import java.util.List;

public class ProductService {
    ProductDao pdao = new ProductDao();

    public List<Product> getListProduct() {
        return pdao.getListProduct();
    }
}
