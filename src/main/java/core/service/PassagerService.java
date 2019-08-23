/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package core.service;

import core.dao.PassagerDAOCrudRepository;
import core.entity.Passager;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

/**
 *
 * @author alexa
 */
@Transactional
@Service
public class PassagerService {
    
    @Autowired
    private PassagerDAOCrudRepository passagerDao;
    
    public void create(Passager p) {
        passagerDao.save(p);
    }
    
    public void modify(Passager p) {
        passagerDao.save(p);
    }
    
    public void delete(Passager p) {
        passagerDao.delete(p);
    }
    
    public Passager findById(Long id) {
        return passagerDao.findOne(id);
    }
    
    public Iterable<Passager> findAll() {
        return passagerDao.findAll();
    }
}
