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
@WebServlet(name = "LoginServlet", urlPatterns = {"/admin/"})
public class LoginServlet extends AutowireServlet {

    @Autowired
    private UtilisateurService uService;

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        
        if(uService.findOneByMail("superUser@root.root") == null){
            uService.create(new Utilisateur("superUser", "", "superUser@root.root", "root", "", "", "", ""));
        }
        
        String postPage = AppUtil.rootbase + "admin/";
        req.setAttribute("postPage", postPage);
        req.getRequestDispatcher("login.jsp").forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        boolean connection = false;
        
        Utilisateur emailUser = uService.findOneByMail(req.getParameter("loginMail"));
        
        if (emailUser == null) 
            resp.sendRedirect(AppUtil.rootbase+"admin/");
        else {
            if (emailUser.getMotDePasse().equals(req.getParameter("loginPassword"))) {
                req.getSession().setAttribute("login", "true");
                resp.sendRedirect(AppUtil.rootbase+"admin/users");
            } else {
                resp.sendRedirect(AppUtil.rootbase+"admin/");
            }
        }
        
        
    }
    
    

}