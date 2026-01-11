package vn.edu.nlu.fit.up.controller;

import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;
import vn.edu.nlu.fit.up.dao.CategoryDao;
import vn.edu.nlu.fit.up.model.Category;
import vn.edu.nlu.fit.up.model.Product;
import vn.edu.nlu.fit.up.service.ProductService;

import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.stream.Collectors;

@WebServlet(name = "WarehouseController", value = "/kho")
public class WarehouseController extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        ProductService ps = new ProductService();
        List<Product> onSale = ps.getOnSale();
        List<Product> offSale = ps.getOffSale();
        CategoryDao cd = new CategoryDao();
        List<Category> parents = cd.getCategoryParent();
        Map<Integer, List<Category>> childrenMap = new HashMap<>();
        for (Category pr : parents) {
            childrenMap.put(pr.getId(),
                    cd.getCategoryChild(pr.getId()));
        }
        request.setAttribute("parents", parents);
        request.setAttribute("children", childrenMap);
        request.setAttribute("onSale", onSale);
        request.setAttribute("offSale", offSale);
        request.getRequestDispatcher("/html/kho.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String action = request.getParameter("action");
        int id = Integer.parseInt(request.getParameter("id"));

        ProductService ps = new ProductService();

        switch (action) {
            case "publish":
                ps.publish(id);   // status = 1
                break;

            case "unpublish":
                ps.unpublish(id); // status = 0
                break;

            case "delete":
                ps.delete(id);
                break;

            case "update":
                String name = request.getParameter("name");
                String priceStr = request.getParameter("price");
                if (name == null) name = "";
                if (priceStr == null || priceStr.isEmpty()) priceStr = "0";
                double price = Double.parseDouble(priceStr);
                ps.update(id,name,price);
                break;
        }
        response.sendRedirect(request.getContextPath() + "/kho");
    }
}
