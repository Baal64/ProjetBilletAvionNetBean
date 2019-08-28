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
@WebServlet(name = "RegisterServlet", urlPatterns = {"/register"})
public class RegisterServlet extends AutowireServlet {

    @Autowired
    private UtilisateurService uService;

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        
        Utilisateur u = new Utilisateur();
        
        // récup champs remplis
        u.setNom(req.getParameter("nom"));
        u.setPrenom(req.getParameter("prenom"));
        u.setMail(req.getParameter("mail"));
        u.setTelephone(req.getParameter("tel"));
        u.setRue(req.getParameter("rue"));
        u.setVille(req.getParameter("ville"));
        u.setCodePostal(req.getParameter("cp"));
        u.setMotDePasse(req.getParameter("mdp1"));
        // comparer les 2 mdp
        if ( u.getMotDePasse().equals(req.getParameter("mdp2"))!= true) {
            throw new RuntimeException("les mots de passes doivent être identique");
            
        }
        
        // Enreg
        uService.inscription(u);
    }
    
    
    
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        
        req.getRequestDispatcher("register.jsp").forward(req, resp);
    }

}