/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package core.service;

import core.dao.UtilisateurDAOCrudRepository;
import core.entity.Utilisateur;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

/**
 *
 * @author alexa
 */
@Transactional
@Service
public class UtilisateurService {
    
    @Autowired
    private UtilisateurDAOCrudRepository utilisateurDao;
    
   
    public void create(Utilisateur u){
        // validation des champs 
        if( u.getNom().length()<5 ){
            throw new RuntimeException(
                    "identifiant doit contenir au moins 5 charactères");
        }
        // Erreur si mail != @
        if ( u.getMail().contains("@")== false){
            throw new RuntimeException("e-mail invalide");
        }
        if(u.getMotDePasse().length()<5){
            throw new RuntimeException(
                    "mdp doit contenir au moins 5 charactères");
        }
        
        // Erreur si identifiant existant
        if (utilisateurDao.findOneByNom(u.getNom())!= null){
            throw new RuntimeException("identifiant déja pris");    
        }
        // Erreur si mail existant
        if (utilisateurDao.findOneByMail(u.getMail())!= null){
            throw new RuntimeException("mail deja existant");
        }
        
        //enregistre utilisateur
        
            utilisateurDao.save(u);
    }
    
    public void modify(Utilisateur u){  
        utilisateurDao.save(u);
    }
    
    public void delete(Utilisateur u){   
        utilisateurDao.delete(u);
    }
    
    public Utilisateur findById(Long id) {   
        return utilisateurDao.findOne(id);      
    }
    
    public Utilisateur findOneByMail(String mail) {   
        return utilisateurDao.findOneByMail(mail);      
    }
    
    public Iterable<Utilisateur> findAll(){
        return utilisateurDao.findAll();
    }
}
