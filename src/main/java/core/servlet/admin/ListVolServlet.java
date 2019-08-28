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
@WebServlet(name = "VolServlet", urlPatterns = {"/admin/vols"})
public class ListVolServlet extends AutowireServlet {

    @Autowired
    private VolService vService;

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        
        //AppUtil.login(req, resp);
        
        String postRoute = AppUtil.rootbase + "/admin/vols" ;
        
        req.setAttribute("rootPage", AppUtil.rootbase);
        req.setAttribute("routeVol", postRoute);
        req.setAttribute("listeVols", vService.findAll());
        req.getRequestDispatcher("list-vols.jsp").forward(req, resp);

    }
}
