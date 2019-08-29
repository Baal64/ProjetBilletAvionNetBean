/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package core.servlet;

import core.service.UtilisateurService;
import core.service.VolService;
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
@WebServlet(name = "ReservationClientServlet", urlPatterns = {"/create-reservation"})
public class CreateReservationServlet extends AutowireServlet {

    @Autowired
    private VolService vService;

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        
        req.setAttribute("vol", vService.findById(Long.parseLong(req.getParameter("idVol"))));
        req.getRequestDispatcher("create-reservation.jsp").forward(req, resp);
    }

}
