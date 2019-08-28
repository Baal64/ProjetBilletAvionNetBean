/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package core.service.test;

import core.entity.Vol;
import core.service.VolService;
import core.spring.SpringConfig;
import java.util.Date;
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
@Rollback(true)
@Transactional
public class VolServiceTest {
    
    @Autowired
    private VolService volService;
    
    @Test
    public void createVolOK() {
        volService.createVol(new Vol("numeroVol", new Date(), new Date(), "villeDepart", "villeArrivee", 100));
    }
    
}
