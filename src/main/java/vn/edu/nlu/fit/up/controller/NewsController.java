package vn.edu.nlu.fit.up.controller;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.*;

import vn.edu.nlu.fit.up.dao.NewsDao;
import vn.edu.nlu.fit.up.model.News;

import java.io.IOException;
import java.util.List;

@WebServlet("/tintuc")
public class NewsController extends HttpServlet {

    private NewsDao newsDao;

    @Override
    public void init() {
        newsDao = new NewsDao();
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String idParam = request.getParameter("id");

        if (idParam != null) {
            try {
                int id = Integer.parseInt(idParam);
                News news = newsDao.getById(id);

                if (news == null) {
                    response.sendRedirect(request.getContextPath() + "/tintuc");
                    return;
                }

                request.setAttribute("news", news);
                request.getRequestDispatcher("/html/tintucct.jsp")
                        .forward(request, response);
                return;

            } catch (NumberFormatException e) {
                response.sendRedirect(request.getContextPath() + "/tintuc");
                return;
            }
        }

        List<News> list = newsDao.getAll();
        request.setAttribute("newsList", list);

        request.getRequestDispatcher("/html/tintuc.jsp")
                .forward(request, response);
    }
}