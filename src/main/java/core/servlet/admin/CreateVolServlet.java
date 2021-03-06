/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package core.servlet.admin;

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
@WebServlet(name = "ListVolServlet", urlPatterns = {"/admin/create-vol"})
public class CreateVolServlet extends AutowireServlet {

    @Autowired
    private VolService vService;

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        
        //AppUtil.login(req, resp);
        
        String postRoute = AppUtil.rootbase + "/admin/create-vol" ;
        
        req.setAttribute("rootPage", AppUtil.rootbase);
        req.setAttribute("routeVol", postRoute);
        req.setAttribute("listeVols", vService.findAll());
        req.getRequestDispatcher("create-vol.jsp").forward(req, resp);

    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        
	String dateDepartSaisie = req.getParameter("dateDepart");
        String dateArriveeSaisie = req.getParameter("dateArrivee");
        
        Date dateDepart = new Date();
        try {
            dateDepart = DateUtil.stringToDate(dateDepartSaisie);
        } catch (ParseException ex) {
            Logger.getLogger(CreateVolServlet.class.getName()).log(Level.SEVERE, null, ex);
        }

        Date dateArrivee = new Date();
        try {
            dateArrivee = DateUtil.stringToDate(dateArriveeSaisie);
        } catch (ParseException ex) {
            Logger.getLogger(CreateVolServlet.class.getName()).log(Level.SEVERE, null, ex);
        }

        String nbrePlaceSaisie = req.getParameter("placeDispo");
        Integer nbrPlaces = Integer.parseInt(nbrePlaceSaisie);
                            
        Vol v = new Vol(
            req.getParameter("numeroVol"),
            dateDepart,
            dateArrivee,
            req.getParameter("villeDepart"),
            req.getParameter("villeArrivee"),
            nbrPlaces
        );
        
        String route = AppUtil.rootbase + "/admin/list-vol";
        vService.createVol(v);
        resp.sendRedirect(route);
    }    
}
