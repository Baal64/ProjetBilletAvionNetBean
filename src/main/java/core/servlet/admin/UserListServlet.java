/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package core.servlet.admin;

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
@WebServlet(name = "UserListServlet", urlPatterns = {"/admin/users"})
public class UserListServlet extends AutowireServlet {

    @Autowired
    private UtilisateurService uService;
    
    private String rootbase = "http://localhost:8084/streaming_web_maven/";

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
//        uService.create(new Utilisateur("SuperUser", "Admin", "itsadeki@gmail.com", "root", "root", "root", "root", "root"));
        String userPage = this.rootbase + "admin/user";
        String listPage = this.rootbase + "admin/users";
        req.setAttribute("rootPage", this.rootbase);
        req.setAttribute("userPage", userPage);
        req.setAttribute("listPage", listPage);
        req.setAttribute("listeUtilisateur", uService.findAll());
        req.getRequestDispatcher("list-user.jsp").forward(req, resp);
    }
}