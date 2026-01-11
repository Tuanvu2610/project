package vn.edu.nlu.fit.up.controller.cart;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import vn.edu.nlu.fit.up.cart.Cart;
import vn.edu.nlu.fit.up.model.Product;
import vn.edu.nlu.fit.up.service.ProductService;

import java.io.IOException;

@WebServlet(name = "AddCart", value = "/AddCart")
public class AddCart extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int id  = Integer.parseInt(request.getParameter("id"));
        int quantity = Integer.parseInt(request.getParameter("q"));
        ProductService ps = new ProductService();
        Product product = ps.getProduct(id);
        if(product == null){
            response.sendRedirect("home");
            return;
        }
        HttpSession session = request.getSession();
        Cart cart = (Cart) session.getAttribute("cart");
        if (cart == null) {
            cart = new Cart();
            session.setAttribute("cart", cart);
        }
        cart.addItem(product, quantity);
        System.out.println("TOTAL AFTER ADD = " + cart.getTotalQuantity());

        String referer = request.getHeader("referer");
        response.sendRedirect(referer != null ? referer : "home");

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}