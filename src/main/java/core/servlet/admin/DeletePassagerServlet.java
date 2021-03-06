/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package core.servlet.admin;

import core.servlet.*;
import core.entity.Vol;
import core.service.PassagerService;
import core.service.UtilisateurService;
import core.service.VolService;
import core.spring.AutowireServlet;
import core.util.AppUtil;
import core.util.DateUtil;
import java.io.IOException;
import java.text.ParseException;
import java.util.Date;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.springframework.beans.factory.annotation.Autowired;

/**
 *
 * @author alexa
 */
@WebServlet(name = "DeleteAdminPassagerServlet", urlPatterns = {"/admin/delete-passager"})
public class DeletePassagerServlet extends AutowireServlet {

    @Autowired
    private PassagerService pService;

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        
        //AppUtil.login(req, resp);
        
        pService.delete(Long.parseLong(req.getParameter("idPassager")));
        
        String route = AppUtil.rootbase + "admin/list-passager";
        resp.sendRedirect(route);
    }
}
