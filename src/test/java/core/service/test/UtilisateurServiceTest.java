/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package core.service.test;

import core.entity.Utilisateur;
import core.service.UtilisateurService;
import core.spring.SpringConfig;
import org.junit.Test;
import static org.junit.Assert.*;
import org.junit.internal.runners.JUnit4ClassRunner;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.annotation.Rollback;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.transaction.annotation.Transactional;

/**
 *
 * @author alexa
 */
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(classes = SpringConfig.class)
@Rollback(false)
@Transactional
public class UtilisateurServiceTest {
    
    @Autowired
    private UtilisateurService utilisateurService;
        
        @Test
        public void createUtilisateurOK() {
            utilisateurService.create(new Utilisateur("nom", "prenom", "mail", "motDePasse", "rue", "ville", "codePostal", "telephone"));       
        }   
    
}
