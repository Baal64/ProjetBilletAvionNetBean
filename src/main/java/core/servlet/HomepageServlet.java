/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package core.servlet;

import core.entity.Utilisateur;
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
 * @author itsadeki
 */
@WebServlet(name = "HomepageServlet", urlPatterns = {"/homepage"})
public class HomepageServlet extends AutowireServlet {
    
    @Autowired
    private UtilisateurService uService;

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        
        req.getRequestDispatcher("index.jsp").forward(req, resp);
    }

}
