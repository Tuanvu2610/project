package vn.edu.nlu.fit.up.controller;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import vn.edu.nlu.fit.up.cart.CartItem;
import vn.edu.nlu.fit.up.dao.OrderDao;
import vn.edu.nlu.fit.up.dao.OrderItemDao;
import vn.edu.nlu.fit.up.model.Account;
import vn.edu.nlu.fit.up.model.Order;
import vn.edu.nlu.fit.up.model.User;

import java.io.IOException;
import java.util.List;

@WebServlet(name = "TrangThaiDonController", value = "/TrangThaiDon")
public class TrangThaiDonController extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        HttpSession session = request.getSession(false);

        if (session == null) {
            response.sendRedirect("login");
            return;
        }
        Account acc = (Account) session.getAttribute("auth");

        if (acc == null || acc.getUser() == null) {
            response.sendRedirect("login");
            return;
        }

        User user = acc.getUser();

        if (user == null) {
            response.sendRedirect("login");
            return;
        }
        String status = request.getParameter("status");
        OrderDao orderDao = new OrderDao();
        List<Order> orders;
        if (status == null || status.equals("all")) {
            orders = orderDao.getOrdersByUser(user.getId());
        } else {
            orders = orderDao.getOrdersByUserAndStatus(user.getId(), status);
        }
        request.setAttribute("orders", orders);
        request.setAttribute("currentStatus", status);
        request.getRequestDispatcher("/html/trangthaidon.jsp")
                .forward(request, response);
    }
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        HttpSession session = request.getSession(false);
        if (session == null) {
            response.sendRedirect("gio-hang");
            return;
        }

        User user = (User) session.getAttribute("auth");
        List<CartItem> checkoutItems = (List<CartItem>) session.getAttribute("checkoutItems");
        Double total = (Double) session.getAttribute("checkoutTotal");

        if (checkoutItems == null || checkoutItems.isEmpty()) {
            response.sendRedirect("gio-hang");
            return;
        }
        OrderDao orderDao = new OrderDao();
        int orderId = orderDao.insert(user.getId(), total);
        OrderItemDao detailDao = new OrderItemDao();

        for (CartItem ci : checkoutItems) {
            detailDao.insert(
                    orderId,
                    ci.getProduct().getId(),
                    ci.getQuantity(),
                    ci.getProduct().getPrice_sale()
            );
        }
        session.removeAttribute("checkoutItems");
        session.removeAttribute("checkoutTotal");
        response.sendRedirect("TrangThaiDon");
    }
}