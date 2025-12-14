package vn.edu.nlu.fit.up.controller;

import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;
import vn.edu.nlu.fit.up.dao.ProductDao;
import vn.edu.nlu.fit.up.model.Product;
import vn.edu.nlu.fit.up.service.ProductService;

import java.io.IOException;
import java.util.List;

@WebServlet(name = "GomThoCungProductListController", value = "/list-product")
public class GomThoCungProductListController extends HttpServlet {
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
        request.setAttribute("listBinhHutLoc", dao.getProductsByCategoryId(20));
        request.setAttribute("listAmChenInLogo", dao.getProductsByCategoryId(21));
        request.setAttribute("listBinhHoaInLogo", dao.getProductsByCategoryId(22));
        request.setAttribute("listBatDia", dao.getProductsByCategoryId(22));
        request.getRequestDispatcher("/html/gomthocung.jsp").forward(request, response);
    }



    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}