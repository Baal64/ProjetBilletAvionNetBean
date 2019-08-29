/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package core.entity;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;
import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.ManyToMany;
import javax.persistence.ManyToOne;

/**
 *
 * @author alexa
 */
@Entity
public class Reservation implements Serializable {

    private static final long serialVersionUID = 1L;
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;
 
    @Column(length = 32, nullable = false)
    private String numeroReservation;
    
    @ManyToMany(mappedBy = "listeVols")
    private List<Vol> listeReservations = new ArrayList<>();
    
    @ManyToMany(mappedBy = "reservations")
    private List<Passager> listePassagers = new ArrayList<>();
    
    @ManyToOne(cascade = CascadeType.PERSIST)
    private Utilisateur utilisateur;

    public Reservation() {
    }

    public Reservation(String numeroReservation, Utilisateur utilisateur) {
        this.numeroReservation = numeroReservation;
        this.utilisateur = utilisateur;
    }
    
    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getNumeroReservation() {
        return numeroReservation;
    }

    public void setNumeroReservation(String numeroReservation) {
        this.numeroReservation = numeroReservation;
    }

    public List<Vol> getListeReservations() {
        return listeReservations;
    }

    public void setListeReservations(List<Vol> listeReservations) {
        this.listeReservations = listeReservations;
    }

    public List<Passager> getListePassagers() {
        return listePassagers;
    }

    public void setListePassagers(List<Passager> listePassagers) {
        this.listePassagers = listePassagers;
    }

    public Utilisateur getUtilisateur() {
        return utilisateur;
    }

    public void setUtilisateur(Utilisateur utilisateur) {
        this.utilisateur = utilisateur;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (id != null ? id.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof Reservation)) {
            return false;
        }
        Reservation other = (Reservation) object;
        if ((this.id == null && other.id != null) || (this.id != null && !this.id.equals(other.id))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "Reservation{" + "id=" + id + ", numeroReservation=" + numeroReservation + ", utilisateur=" + utilisateur + '}';
    }
    
}
