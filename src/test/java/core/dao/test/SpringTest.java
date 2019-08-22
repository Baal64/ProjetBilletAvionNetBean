/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package core.dao.test;

import core.dao.UtilisateurDAOCrudRepository;
import core.entity.Utilisateur;
import core.spring.SpringConfig;
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
public class SpringTest {
    
    @Autowired
    private UtilisateurDAOCrudRepository dao;
    
    @Test
    @Transactional
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
    
    @Test
    @Transactional
    public void deleteUtilisateurOK() {
        Utilisateur u = new Utilisateur("machin", "machin", "machin", "machin", "machin", "machin", "machin", "machin");
        dao.save(u);
        
        dao.delete(u);
    }    
    
}
