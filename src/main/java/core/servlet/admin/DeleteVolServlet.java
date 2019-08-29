/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package core.servlet.admin;

import core.servlet.*;
import core.entity.Vol;
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
@WebServlet(name = "DeleteAdminVolServlet", urlPatterns = {"/admin/delete-vol"})
public class DeleteVolServlet extends AutowireServlet {

    @Autowired
    private VolService vService;

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        
        //AppUtil.login(req, resp);
        
        vService.removeVol(Long.parseLong(req.getParameter("idVol")));
        
        String route = AppUtil.rootbase + "/admin/list-vol";
        resp.sendRedirect(route);
    }
}
