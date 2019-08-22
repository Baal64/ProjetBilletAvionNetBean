/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package core.dao;

import core.entity.Utilisateur;
import java.util.List;
import javax.persistence.EntityManager;
import javax.persistence.Persistence;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

/**
 *
 * @author itsadeki
 */
@Repository
public class UtilisateurDAO {
    
    @PersistenceContext
    private EntityManager em;
    
    public void createUtilisateur(Utilisateur ut){
        em.persist(ut);
    }
    
    public List<Utilisateur> readUtilisateur() {
        
        EntityManager em = Persistence.createEntityManagerFactory("PU").createEntityManager();
        
        Query q = em.createQuery(""    
                + "SELECT u "
                + "FROM Utilisateur u ");
       
        List <Utilisateur> listeUtilisateurs = q.getResultList();
        
        return listeUtilisateurs;
    } 

    public void updateUtilisateur(Utilisateur ut){
        
        EntityManager em = Persistence.createEntityManagerFactory("PU").createEntityManager();

        em.getTransaction().begin();
        em.merge(ut);
        em.getTransaction().commit();
    }  
    
    public void deleteUtilisateur(Utilisateur ut){
        
        EntityManager em = Persistence.createEntityManagerFactory("PU").createEntityManager();

        em.getTransaction().begin();
        em.remove(ut);
        em.getTransaction().commit();
    }
    
}
