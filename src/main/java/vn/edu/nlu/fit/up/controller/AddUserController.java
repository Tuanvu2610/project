package vn.edu.nlu.fit.up.controller;

import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;
import org.jdbi.v3.core.statement.UnableToExecuteStatementException;
import vn.edu.nlu.fit.up.dao.AccountDao;
import vn.edu.nlu.fit.up.dao.CategoryDao;
import vn.edu.nlu.fit.up.model.Account;
import vn.edu.nlu.fit.up.model.Category;
import vn.edu.nlu.fit.up.model.User;

import java.io.IOException;
import java.sql.SQLIntegrityConstraintViolationException;
import java.time.LocalDate;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@WebServlet(name = "AddUserController", value = "/them-tai-khoan")
public class AddUserController extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        CategoryDao cd = new CategoryDao();
        AccountDao ad = new AccountDao();
        List<Category> parents = cd.getCategoryParent();
        Map<Integer, List<Category>> childrenMap = new HashMap<>();
        for (Category p : parents) {
            childrenMap.put(p.getId(),
                    cd.getCategoryChild(p.getId()));
        }
        request.setAttribute("parents", parents);
        request.setAttribute("children", childrenMap);
        request.setAttribute("totalAcc", ad.totalAccount());
        request.setAttribute("totalActive", ad.getAccountByStatus("active"));
        request.setAttribute("totalPending",  ad.getAccountByStatus("pending"));
        request.setAttribute("totalBanned",  ad.getAccountByStatus("banned"));
        request.getRequestDispatcher("/html/addUser.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        Account acc = new Account();
        User user = new User();
        AccountDao ad = new AccountDao();
        user.setName(request.getParameter("name"));
        String dobStr = request.getParameter("birthday");
        if (dobStr != null && !dobStr.isEmpty()) {
            user.setDate_of_birth(LocalDate.parse(dobStr));
        }
        user.setPhone(request.getParameter("phone"));
        user.setEmail(request.getParameter("email"));
        user.setSex(request.getParameter("sex"));
        acc.setRole(request.getParameter("role"));
        acc.setStatus(request.getParameter("status"));
        acc.setPassword(request.getParameter("password"));
        acc.setUsername(request.getParameter("username"));
        if(ad.existsUsername(user.getUsername())) {
            response.sendRedirect(request.getContextPath() + "/them-tai-khoan?msg=exist");
        }else  {
            if(ad.addUser(acc, user) > 0) {
                response.sendRedirect(request.getContextPath() + "/them-tai-khoan?msg=addSuccess");
            }else  {
                response.sendRedirect(request.getContextPath() + "/them-tai-khoan?msg=error");
            }
        }
    }
}