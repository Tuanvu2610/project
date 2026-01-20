package vn.edu.nlu.fit.up.service;

import jakarta.servlet.*;
import jakarta.servlet.annotation.WebFilter;
import vn.edu.nlu.fit.up.dao.CategoryDao;
import vn.edu.nlu.fit.up.model.Category;

import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@WebFilter("/*")
public class Menu  implements Filter {
     private CategoryDao cd;
     @Override
     public void init(FilterConfig filterConfig) {
         cd = new CategoryDao();
        }

    @Override
    public void doFilter(ServletRequest servletRequest, ServletResponse servletResponse, FilterChain filterChain) throws IOException, ServletException {
        List<Category> parents = cd.getCategoryParent();
        Map<Integer, List<Category>> childrenMap = new HashMap<>();
        for (Category p : parents) {
            childrenMap.put(p.getId(),
            cd.getCategoryChild(p.getId()));
        }

        servletRequest.setAttribute("parents", parents);
        servletRequest.setAttribute("children", childrenMap);

        filterChain.doFilter(servletRequest, servletResponse);
     }

}
