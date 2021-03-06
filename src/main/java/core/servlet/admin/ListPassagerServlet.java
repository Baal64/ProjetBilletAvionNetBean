/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package core.servlet.admin;

import core.entity.Passager;
import core.service.PassagerService;
import core.spring.AutowireServlet;
import core.util.AppUtil;
import java.io.IOException;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.springframework.beans.factory.annotation.Autowired;

/**
 *
 * @author Formation
 */
@WebServlet(name = "ListPassagerServlet", urlPatterns = {"/admin/list-passager"})
public class ListPassagerServlet extends AutowireServlet {
    
    @Autowired
    private PassagerService service;
    
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
//        service.create(new Passager("test01", "test01", "test01"));
//        service.create(new Passager("test02", "test02", "test02"));
        req.setAttribute("rootPage", AppUtil.rootbase);
        req.setAttribute("passagers", service.findAll());  
        req.getRequestDispatcher("/admin/list-passager.jsp").forward(req, resp);
        
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String recherche = req.getParameter("recherche");
        
        Iterable<Passager> resultatNom = service.findByNom(recherche);
        
        req.setAttribute("rootPage", AppUtil.rootbase);
        req.setAttribute("passagers", resultatNom);  
        req.getRequestDispatcher("/admin/list-passager.jsp").forward(req, resp);
    }
    
}
