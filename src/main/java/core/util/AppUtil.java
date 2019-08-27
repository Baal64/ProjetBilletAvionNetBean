/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package core.util;

import core.entity.Utilisateur;
import core.service.UtilisateurService;
import java.io.IOException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.springframework.beans.factory.annotation.Autowired;

/**
 *
 * @author itsadeki
 */
public class AppUtil {
    
    static public String rootbase = "http://localhost:8084/app/";
    
    static public void login(HttpServletRequest req, HttpServletResponse resp) throws IOException {
        if (!req.getSession().getAttribute("login").equals("true")) {
            String root = AppUtil.rootbase+"admin/";
            resp.sendRedirect(root);
        }
    }
    
}
