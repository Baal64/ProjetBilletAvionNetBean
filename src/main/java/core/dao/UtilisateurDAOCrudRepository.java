/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package core.dao;

import core.entity.Utilisateur;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;

/**
 *
 * @author itsadeki
 */
public interface UtilisateurDAOCrudRepository extends CrudRepository<Utilisateur, Long>{
    
    public Utilisateur findOneByNom (String nom);
    public Utilisateur findOneByMail(String mail);
}
