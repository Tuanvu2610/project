package vn.edu.nlu.fit.up.controller;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import vn.edu.nlu.fit.up.dao.CategoryDao;
import vn.edu.nlu.fit.up.model.Category;
import vn.edu.nlu.fit.up.model.Product;
import vn.edu.nlu.fit.up.service.ProductService;

import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@WebServlet(name = "ProductGiaDungController", value = "/gom-gia-dung")
public class ProductGiaDungController extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        ProductService ps = new ProductService();
        List<Product> list = ps.disProduct();
        List<Product> listAmChen = ps.getByCategory(5);
        List<Product> listbatDia = ps.getByCategory(6);
        List<Product> listChum = ps.getByCategory(7);
        List<Product> listDenNgu = ps.getByCategory(9);
        List<Product> listNhaTam = ps.getByCategory(8);
        request.setAttribute("list", list);
        request.setAttribute("listAmChen", listAmChen);
        request.setAttribute("listbatDia", listbatDia);
        request.setAttribute("listChum", listChum);
        request.setAttribute("listDenNgu", listDenNgu);
        request.setAttribute("listNhaTam", listNhaTam);
        CategoryDao cd = new CategoryDao();
        List<Category> parents = cd.getCategoryParent();

        Map<Integer, List<Category>> childrenMap = new HashMap<>();
        for (Category p : parents) {
            childrenMap.put(p.getId(),
                    cd.getCategoryChild(p.getId()));
        }
        request.setAttribute("parents", parents);
        request.setAttribute("children", childrenMap);
        request.getRequestDispatcher("/html/gomgiadung.jsp").forward(request, response);
    }


    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}