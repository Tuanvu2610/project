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

@WebServlet(name = "ProductGomQuaTangController", value = "/gom-qua-tang")
public class ProductGomQuaTangController extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        ProductService ps = new ProductService();
        List<Product> listDiscounts = ps.getDiscountGomQuaTang();
        List<Product> listBinhHutLoc = ps.getByCategory(20);
        List<Product> listAmChenInLogo = ps.getByCategory(21);
        List<Product> listBinhHoa = ps.getByCategory(22);
        List<Product> listBatDia = ps.getByCategory(23);
        request.setAttribute("listDiscounts", listDiscounts);
        request.setAttribute("listBinhHutLoc", listBinhHutLoc);
        request.setAttribute("listAmChenInLogo", listAmChenInLogo);
        request.setAttribute("listBinhHoa", listBinhHoa);
        request.setAttribute("listBatDia", listBatDia);
        CategoryDao cd = new CategoryDao();
        List<Category> parents = cd.getCategoryParent();

        Map<Integer, List<Category>> childrenMap = new HashMap<>();
        for (Category p : parents) {
            childrenMap.put(p.getId(),
                    cd.getCategoryChild(p.getId()));
        }
        request.setAttribute("parents", parents);
        request.setAttribute("children", childrenMap);
        request.getRequestDispatcher("/html/gomquatang.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}