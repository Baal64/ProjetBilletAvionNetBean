/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package core.service.test;

import core.entity.Utilisateur;
import core.service.UtilisateurService;
import core.spring.SpringConfig;
import org.junit.Assert;
import org.junit.Test;
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
        
        @Test
        public void findOneByMailOK() {
            Utilisateur test = new Utilisateur("nom", "prenom", "test", "motDePasse", "rue", "ville", "codePostal", "telephone");
            utilisateurService.create(test);
            Utilisateur u = utilisateurService.findOneByMail("test");       
            
            Assert.assertEquals(test, u);
        } 
        
        @Test
        public void findOneByMailKO() {
            Assert.assertNull(utilisateurService.findOneByMail("ceci_est_un_email_qui_n_existe_pas_en_base"));
        }   
    
}
