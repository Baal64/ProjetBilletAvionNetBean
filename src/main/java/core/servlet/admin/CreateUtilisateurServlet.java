/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package core.servlet.admin;

import core.entity.Utilisateur;
import core.service.UtilisateurService;
import core.spring.AutowireServlet;
import core.util.AppUtil;
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
@WebServlet(name = "UserServlet", urlPatterns = {"/admin/create-utilisateur"})
public class CreateUtilisateurServlet extends AutowireServlet {

    @Autowired
    private UtilisateurService uService;

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        //AppUtil.login(req, resp);
    
        String userPage = AppUtil.rootbase + "admin/user";
        String listPage = AppUtil.rootbase + "admin/users";
        req.setAttribute("rootPage", AppUtil.rootbase);
        req.setAttribute("userPage", userPage);
        req.setAttribute("listPage", listPage);
        req.getRequestDispatcher("create-utilisateur.jsp").forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        
        Utilisateur u = new Utilisateur(req.getParameter("nom"), req.getParameter("prenom"), req.getParameter("mail"), req.getParameter("motDePasse"), req.getParameter("rue"), req.getParameter("ville"), req.getParameter("codePostal"), req.getParameter("telephone"));
        uService.create(u);
        resp.sendRedirect(AppUtil.rootbase+"admin/list-utilisateur");
    }
    
    

}