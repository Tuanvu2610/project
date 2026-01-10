package vn.edu.nlu.fit.up.controller;

import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;
import vn.edu.nlu.fit.up.dao.CategoryDao;
import vn.edu.nlu.fit.up.dao.ProductDao;
import vn.edu.nlu.fit.up.model.Category;
import vn.edu.nlu.fit.up.model.Product;
import vn.edu.nlu.fit.up.service.ProductService;

import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@WebServlet(name = "ProductGomThoCungController", value = "/gom-tho-cung")
public class ProductGomThoCungController extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        ProductService ps = new ProductService();
        List<Product> listDiscounts = ps.getDiscountGomThoCung();
        List<Product> listDoTho = ps.getByCategory(15);
        List<Product> listBatHuong = ps.getByCategory(16);
        List<Product> listMamBong = ps.getByCategory(17);
        List<Product> listBatNap = ps.getByCategory(18);
        List<Product> listDenNen = ps.getByCategory(19);
        request.setAttribute("listDiscounts", listDiscounts);
        request.setAttribute("listDoTho", listDoTho);
        request.setAttribute("listBatHuong", listBatHuong);
        request.setAttribute("listMamBong", listMamBong);
        request.setAttribute("listBatNap", listBatNap);
        request.setAttribute("listDenNen", listDenNen);
        CategoryDao cd = new CategoryDao();
        List<Category> parents = cd.getCategoryParent();

        Map<Integer, List<Category>> childrenMap = new HashMap<>();
        for (Category p : parents) {
            childrenMap.put(p.getId(),
                    cd.getCategoryChild(p.getId()));
        }
        request.setAttribute("parents", parents);
        request.setAttribute("children", childrenMap);
        request.getRequestDispatcher("/html/gomthocung.jsp").forward(request, response);

    }



    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}