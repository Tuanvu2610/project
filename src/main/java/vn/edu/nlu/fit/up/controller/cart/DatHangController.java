package vn.edu.nlu.fit.up.controller.cart;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import vn.edu.nlu.fit.up.cart.Cart;
import vn.edu.nlu.fit.up.cart.CartItem;
import vn.edu.nlu.fit.up.dao.OrderDao;
import vn.edu.nlu.fit.up.dao.OrderItemDao;
import vn.edu.nlu.fit.up.model.Account;
import vn.edu.nlu.fit.up.model.User;

import java.io.IOException;

@WebServlet(name = "DatHangController", value = "/DatHang")
public class DatHangController extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession(false);
        Account acc = (Account) session.getAttribute("auth");
        Cart cart = (Cart) session.getAttribute("cart");

        OrderDao orderDao = new OrderDao();
        int orderId = orderDao.insert(acc.getId(), cart.getTotal());

        OrderItemDao itemDao = new OrderItemDao();
        for (CartItem item : cart.getItems()) {
            itemDao.insert(
                    orderId,
                    item.getProduct().getId(),
                    item.getQuantity(),
                    item.getProduct().getPrice_sale()
            );
        }

        session.removeAttribute("cart");

        response.sendRedirect("TrangThaiDon");
    }
}