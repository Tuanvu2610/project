package vn.edu.nlu.fit.up.controller;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.util.List;

import vn.edu.nlu.fit.up.model.Product;
import vn.edu.nlu.fit.up.service.ProductService;


@WebServlet(name = "ProductTrangTriController", value = "/gomtrangtri")
public class ProductTrangTriController extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        ProductService ps = new ProductService();

        // ===== GỐM TRANG TRÍ (category con) =====
        List<Product> listBinh      = ps.getByCategory(10); // Bình gốm
        List<Product> listLucBinh   = ps.getByCategory(11); // Lục bình
        List<Product> listTuong     = ps.getByCategory(12); // Tượng gốm
        List<Product> listTranh     = ps.getByCategory(13); // Tranh gốm
        List<Product> listDia       = ps.getByCategory(14); // Đĩa trang trí
        List<Product> listDen       = ps.getByCategory(15); // Đèn gốm
        List<Product> listPhongThuy = ps.getByCategory(16); // Gốm phong thủy
        List<Product> listPhongKhach= ps.getByCategory(17); // Gốm trang trí phòng khách

        // ===== setAttribute =====
        request.setAttribute("listBinh", listBinh);
        request.setAttribute("listLucBinh", listLucBinh);
        request.setAttribute("listTuong", listTuong);
        request.setAttribute("listTranh", listTranh);
        request.setAttribute("listDia", listDia);
        request.setAttribute("listDen", listDen);
        request.setAttribute("listPhongThuy", listPhongThuy);
        request.setAttribute("listPhongKhach", listPhongKhach);

        request.getRequestDispatcher("/html/gomtrangtri.jsp")
                .forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}