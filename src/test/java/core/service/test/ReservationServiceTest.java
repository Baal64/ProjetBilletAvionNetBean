/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package core.service.test;

import core.entity.Passager;
import core.entity.Reservation;
import core.entity.Utilisateur;
import core.entity.Vol;
import core.service.ReservationService;
import core.spring.SpringConfig;
import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.List;
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
public class ReservationServiceTest {
    
    @Autowired
    private ReservationService reservationService;
    
    @Test
    public void createReservationOK() {
        Passager p1 = new Passager("nom", "prenom", "numeroPlace");
        Passager p2 = new Passager("nom", "prenom", "numeroPlace");

        List<Passager> liste = new ArrayList<>();
        liste.add(p2);
        liste.add(p1);
        
        reservationService.createResevationVolSimple(
            new Reservation(
                "numeroReservation",
                new Utilisateur("nom",
                    "prenom",
                    "mail",
                    "motDePasse",
                    "rue",
                    "ville",
                    "codePostal",
                    "telephone")),
            new Vol(
                "numeroVol",
                new Timestamp(System.currentTimeMillis()),
                new Timestamp(System.currentTimeMillis()),
                "villeDepart",
                "villeArrivee",
                100),
            liste
        );
 

    }

}
