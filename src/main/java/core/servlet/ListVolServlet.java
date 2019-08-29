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
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.springframework.beans.factory.annotation.Autowired;

/**
 *
 * @author itsadeki
 */
@WebServlet(name = "ListVolClientServlet", urlPatterns = {"/list-vol"})
public class ListVolServlet extends AutowireServlet {

    @Autowired
    private VolService vService;

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        
        req.setAttribute("listeVols", vService.findAll());

        req.getRequestDispatcher("list-vol.jsp").forward(req, resp);
    }

}
