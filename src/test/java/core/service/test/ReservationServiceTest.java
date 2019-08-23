/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package core.service.test;

import core.entity.Reservation;
import core.entity.Utilisateur;
import core.service.ReservationService;
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
public class ReservationServiceTest {
    
    @Autowired
    private ReservationService reservationService;
    
    @Test
    public void createReservationOK() {
        reservationService.createReservation(new Reservation("numero", new Utilisateur("default", "default", "default", "default", "default", "default", "default", "default")));
    }
    
}
