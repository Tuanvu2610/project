package vn.edu.nlu.fit.up.controller.cart;

import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;
import vn.edu.nlu.fit.up.cart.Cart;
import vn.edu.nlu.fit.up.cart.CartItem;
import vn.edu.nlu.fit.up.dao.AuthDao;
import vn.edu.nlu.fit.up.model.Account;
import vn.edu.nlu.fit.up.model.User;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
@WebServlet(name = "ThanhtoanConTroller", value = "/thanhtoan")
public class ThanhtoanConTroller extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        HttpSession session = request.getSession(false);
        AuthDao addressDao = new AuthDao();
        String fullAddress = null;
        Account acc = (Account) session.getAttribute("auth");
        if (acc == null || acc.getUser() == null) {
            response.sendRedirect("login");
            return;
        }

        User user = acc.getUser();

        if (user.getAddress_id() > 0) {
            fullAddress = addressDao.findById(user.getAddress_id());
        }

        request.setAttribute("fullAddress", fullAddress);

        request.getRequestDispatcher("/html/thanhtoan.jsp")
                .forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        HttpSession session = request.getSession(false);

        if (session == null) {
            response.sendRedirect("gio-hang");
            return;
        }

        Cart cart = (Cart) session.getAttribute("cart");

        if (cart == null) {
            response.sendRedirect("gio-hang");
            return;
        }

        String[] checkedIds = request.getParameterValues("checkedIds");

        if (checkedIds == null || checkedIds.length == 0) {
            response.sendRedirect("gio-hang");
            return;
        }

        List<CartItem> checkoutItems = new ArrayList<>();
        double total = 0;

        for (String idStr : checkedIds) {
            int id = Integer.parseInt(idStr);
            CartItem ci = cart.getItem(id);

            if (ci != null) {
                checkoutItems.add(ci);
                total += ci.getQuantity() * ci.getProduct().getPrice_sale();
            }
        }

        request.setAttribute("checkoutItems", checkoutItems);
        request.setAttribute("totalAmount", total);

        request.getRequestDispatcher("/html/thanhtoan.jsp")
                .forward(request, response);
    }
}
