/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package core.servlet.admin;

import core.entity.Passager;
import core.entity.Reservation;
import core.entity.Utilisateur;
import core.entity.Vol;
import core.service.ReservationService;
import core.servlet.*;
import core.service.UtilisateurService;
import core.spring.AutowireServlet;
import core.util.AppUtil;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
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
@WebServlet(name = "ReservationServlet", urlPatterns = {"/admin/list-reservation"})
public class ListReservationServlet extends AutowireServlet {

    @Autowired
    private ReservationService rService;

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        
        req.setAttribute("rootPage", AppUtil.rootbase);
        req.setAttribute("listReservation", rService.findAll());
        req.getRequestDispatcher("list-reservation.jsp").forward(req, resp);
    }

}
