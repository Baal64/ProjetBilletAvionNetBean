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
import java.util.ArrayList;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.springframework.beans.factory.annotation.Autowired;

/**
 *
 * @author itsadeki
 */
@WebServlet(name = "TestServlet", urlPatterns = {"/test"})
public class TestServlet extends AutowireServlet {

    @Autowired
    private UtilisateurService uService;

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        req.setAttribute("listeUtilisateur", uService.findAll());
        req.getRequestDispatcher("test.jsp").forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        
        Utilisateur u = new Utilisateur(req.getParameter("nom"), req.getParameter("prenom"), req.getParameter("mail"), req.getParameter("motDePasse"), req.getParameter("rue"), req.getParameter("ville"), req.getParameter("codePostal"), req.getParameter("telephone"));
        uService.create(u);
        resp.sendRedirect("http://localhost:8084/streaming_web_maven/test");
    }
    
    

}