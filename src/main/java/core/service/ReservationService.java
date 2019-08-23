/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package core.service;

import core.entity.Reservation;
import core.dao.ReservationDAOCrudRepository;
import core.entity.Passager;
import core.entity.Vol;
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
    
    public void createReservationAR(Reservation r, Vol vAller, Vol vRetour, List<Passager> p) {
        Integer vol1 = vAller.getNombrePlacesDisponibles();
        Integer vol2 = vRetour.getNombrePlacesDisponibles();
        Integer nombrePassagersResa = p.size();
        if ((vol1 >= nombrePassagersResa) && (vol2 >= nombrePassagersResa)){
           reservationDAO.save(r); 
        }
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
