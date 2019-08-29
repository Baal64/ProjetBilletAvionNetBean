/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package core.service;

import core.dao.VolDAOCrudRepository;
import core.entity.Vol;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

/**
 *
 * @author itsadeki
 */
@Transactional
@Service
public class VolService {
    
    @Autowired
    private VolDAOCrudRepository volDAO;
    
    public void createVol(Vol r) {
        
        
        volDAO.save(r);
    }
    
    public void updateVol(Vol r) {
        volDAO.save(r);
    }
    
    public void removeVol(long id) {
        volDAO.delete(id);
    }
    
    public Vol findById(long id) {
        return volDAO.findOne(id);
    }
    
    public Iterable<Vol> findAll() {
        return volDAO.findAll();
    }
    
}
