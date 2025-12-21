package vn.edu.nlu.fit.up.controller;

import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;
import vn.edu.nlu.fit.up.dao.ProductDao;

import java.io.IOException;

@WebServlet(name = "ProductGomQuaTangController", value = "/gom-qua-tang")
public class ProductGomQuaTangController extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        ProductDao dao = new ProductDao();
        request.setAttribute("listBinhHutLoc", dao.getProductsByCategoryId(20));
        request.setAttribute("listAmChenInLogo", dao.getProductsByCategoryId(21));
        request.setAttribute("listBinhHoa", dao.getProductsByCategoryId(22));
        request.setAttribute("listBatDia", dao.getProductsByCategoryId(23));
        request.setAttribute("listDiscounts", dao.getDiscountGomQuaTang());
        request.getRequestDispatcher("/html/gomquatang.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}