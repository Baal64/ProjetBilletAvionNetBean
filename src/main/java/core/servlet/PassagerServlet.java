/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package core.servlet;

import core.entity.Passager;
import core.entity.Utilisateur;
import core.service.PassagerService;
import core.service.UtilisateurService;
import core.spring.AutowireServlet;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.springframework.beans.factory.annotation.Autowired;

/**
 *
 * @author Formation
 */
@WebServlet(name = "PassagerServlet", urlPatterns = {"/passager"})
public class PassagerServlet extends AutowireServlet {
    
    @Autowired
    private PassagerService pService;

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        req.setAttribute("listePassager", pService.findAll());
        req.getRequestDispatcher("admin/list-passager.jsp").forward(req, resp);
    }

    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        
        req.setAttribute("listePassager", pService.findByNom(req.getParameter("recherche")));
        req.getRequestDispatcher("admin/list-passager.jsp").forward(req, resp);
    }
}
