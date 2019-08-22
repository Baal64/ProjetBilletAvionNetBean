/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package core.dao.test;

import core.dao.PassagerDAOCrudRepository;
import core.dao.ReservationDAOCrudrepository;
import core.dao.UtilisateurDAOCrudRepository;
import core.dao.VolDAOCrudRepository;
import core.entity.Passager;
import core.entity.Reservation;
import core.entity.Utilisateur;
import core.entity.Vol;
import core.spring.SpringConfig;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.annotation.Rollback;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.transaction.annotation.Transactional;

/**
 *
 * @author itsadeki
 */
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(classes = SpringConfig.class)
@Rollback(false)
@Transactional
public class SpringTest {
    
    @Autowired
    private UtilisateurDAOCrudRepository dao;
    
    @Test
    public void createUtilisateurOK() {
        Utilisateur u = new Utilisateur("machin", "machin", "machin", "machin", "machin", "machin", "machin", "machin");
        
        dao.save(u);
    }
    
    @Test
    @Transactional
    public void updateUtilisateurOK() {
        Utilisateur u = new Utilisateur("machin", "machin", "machin", "machin", "machin", "machin", "machin", "machin");
        dao.save(u);
        
        u.setNom("Machin");
        dao.save(u);
    }
    
    @Autowired
    private PassagerDAOCrudRepository passagerDao;
    
    @Test
    public void createPassagerOK() {
        Passager p = new  Passager("nom", "prenom", "nuemroPlace");
        passagerDao.save(p);
    }

    @Test
    @Transactional
    public void deleteUtilisateurOK() {
        Utilisateur u = new Utilisateur("machin", "machin", "machin", "machin", "machin", "machin", "machin", "machin");
        dao.save(u);
        
        dao.delete(u);
    }    
    
    @Autowired
    private VolDAOCrudRepository volDAO;
    
    @Test
    public void createVolOK(){
        Vol v = new Vol("numeroVol", "villeDepart", "villeArrivee");
        volDAO.save(v);
    }
    @Autowired
    private ReservationDAOCrudrepository reservationDAO;
    
    @Test
    public void createReservationOK(){
        
        Reservation r = new Reservation("13");
        reservationDAO.save(r);
    }
}
   