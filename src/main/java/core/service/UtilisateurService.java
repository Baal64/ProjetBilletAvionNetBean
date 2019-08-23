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
    
    public Iterable<Utilisateur> findAll(){
        return utilisateurDao.findAll();
    }
}
