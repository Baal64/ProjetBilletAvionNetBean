/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package core.dao.test;

import core.dao.UtilisateurDAO;
import core.dao.UtilisateurDAOCrudRepository;
import core.entity.Utilisateur;
import core.spring.SpringConfig;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.transaction.annotation.Transactional;

/**
 *
 * @author itsadeki
 */
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(classes = SpringConfig.class)
public class SpringTest {
    
    @Autowired
    private UtilisateurDAOCrudRepository dao;
    
    @Test
    @Transactional
    public void createUtilisateurOK() {
        
        Utilisateur u = new Utilisateur("machin", "machin", "machin", "machin", "machin", "machin", "machin", "machin");
        
        dao.save(u);
    }
    
    
}
