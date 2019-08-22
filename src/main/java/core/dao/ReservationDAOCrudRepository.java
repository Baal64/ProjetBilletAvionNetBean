/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package core.dao;

import core.entity.Reservation;
import org.springframework.data.repository.CrudRepository;

/**
 *
 * @author alexa
 */
public interface ReservationDAOCrudRepository extends CrudRepository<Reservation, Long> {
    
}
