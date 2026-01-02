package vn.edu.nlu.fit.up.controller;

import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;
import vn.edu.nlu.fit.up.dao.CategoryDao;
import vn.edu.nlu.fit.up.dao.ProductDao;
import vn.edu.nlu.fit.up.model.Category;

import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@WebServlet(name = "ProductGomThoCungController", value = "/gom-tho-cung")
public class ProductGomThoCungController extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//        ProductService ps = new ProductService();
//        List<Product> list = ps.getListProduct();
//        request.setAttribute("list", list);
//        request.getRequestDispatcher("/html/gomthocung.jsp").forward(request, response);


        ProductDao dao = new ProductDao();
        request.setAttribute("listDoTho", dao.getProductsByCategoryId(15));
        request.setAttribute("listBatHuong", dao.getProductsByCategoryId(16));
        request.setAttribute("listMamBong", dao.getProductsByCategoryId(17));
        request.setAttribute("listBatNap", dao.getProductsByCategoryId(18));
        request.setAttribute("listDenNen", dao.getProductsByCategoryId(19));
        request.setAttribute("listDiscounts", dao.getDiscountGomThoCung());

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