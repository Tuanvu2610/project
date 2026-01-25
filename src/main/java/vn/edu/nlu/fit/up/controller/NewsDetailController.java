package vn.edu.nlu.fit.up.controller;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import vn.edu.nlu.fit.up.dao.NewsDao;
import vn.edu.nlu.fit.up.model.News;

import java.io.IOException;

@WebServlet("/tintucct")
public class NewsDetailController extends HttpServlet {

    private NewsDao newsDao;

    @Override
    public void init() throws ServletException {
        newsDao = new NewsDao();
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String idParam = request.getParameter("id");

        if (idParam == null || idParam.isEmpty()) {
            request.setAttribute("newsList", newsDao.getAll());
            request.getRequestDispatcher("/html/tintuc.jsp")
                    .forward(request, response);
            return;
        }

        int id;
        try {
            id = Integer.parseInt(idParam);
        } catch (NumberFormatException e) {
            response.sendRedirect(request.getContextPath() + "/tintuc");
            return;
        }

        News news = newsDao.getById(id);

        if (news == null) {
            response.sendRedirect(request.getContextPath() + "/tintuc");
            return;
        }

        request.setAttribute("news", news);
        request.getRequestDispatcher("/html/tintucct.jsp")
                .forward(request, response);
    }
}