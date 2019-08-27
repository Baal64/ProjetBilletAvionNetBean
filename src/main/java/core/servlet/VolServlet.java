/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package core.servlet;

import core.entity.Vol;
import core.service.VolService;
import core.spring.AutowireServlet;
import java.io.IOException;
import java.util.Date;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.springframework.beans.factory.annotation.Autowired;

/**
 *
 * @author alexa
 */
@WebServlet(name = "VolServlet", urlPatterns = {"/volservlet"})
public class VolServlet extends AutowireServlet {

    @Autowired
    private VolService vService;

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        
        req.setAttribute("listeVols", vService.findAll());
        req.getRequestDispatcher("test_vol.jsp").forward(req, resp);

    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        
        Vol v = new Vol(req.getParameter("numeroVol"), new Date(0, 0, 0, 0, 0, 0), new Date(0, 0, 0, 0, 0, 0), req.getParameter("villeDepart"), req.getParameter("villeArrivee"), 100);
        vService.createVol(v);
        resp.sendRedirect("http://localhost:8084/streaming_web_maven/test_vol");
    }
    
   
    
}
