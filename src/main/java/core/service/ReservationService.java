/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package core.service;

import core.entity.Reservation;
import core.dao.ReservationDAOCrudRepository;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

/**
 *
 * @author itsadeki
 */
@Transactional
@Service
public class ReservationService {
    
    @Autowired
    private ReservationDAOCrudRepository reservationDAO;
    
    public void createReservation(Reservation r) {
        reservationDAO.save(r);
    }
    
    public void updateReservation(Reservation r) {
        reservationDAO.save(r);
    }
    
    public void removeReservation(long id) {
        reservationDAO.delete(id);
    }
    
    public Reservation findById(long id) {
        return reservationDAO.findOne(id);
    }
    
    public Iterable<Reservation> findAll() {
        return reservationDAO.findAll();
    }
    
}
