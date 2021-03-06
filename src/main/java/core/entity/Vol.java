/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package core.entity;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.ManyToMany;
import javax.persistence.Temporal;


/**
 *
 * @author itsadeki
 */
@Entity
public class Vol implements Serializable {

    private static final long serialVersionUID = 1L;
    
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;
    
    @Column(length = 32, unique = true, nullable = false)
    private String numeroVol;
    
    @Column(nullable = false)
    @Temporal(javax.persistence.TemporalType.TIMESTAMP)
    private Date dateDepart;
    
    @Column(nullable = false)
    @Temporal(javax.persistence.TemporalType.TIMESTAMP)
    private Date dateArrivee;
    
    @Column(length = 32, nullable = false)
    private String villeDepart;
    
    @Column(length = 32, nullable = false)
    private String villeArrivee;
    
    @Column(nullable = false)
    private Integer nombrePlacesDisponibles;
    
    @ManyToMany
    private List<Reservation> listeVols = new ArrayList<>();

    public Vol(String numeroVol, Date dateDepart, Date dateArrivee, String villeDepart, String villeArrivee, Integer nombrePlacesDisponibles) {
        this.numeroVol = numeroVol;
        this.dateDepart = dateDepart;
        this.dateArrivee = dateArrivee;
        this.villeDepart = villeDepart;
        this.villeArrivee = villeArrivee;
        this.nombrePlacesDisponibles = nombrePlacesDisponibles;
    }

    public Vol() {
    }
    
    public Long getId() {
        return id;
    }

    
    
    public void setId(Long id) {
        this.id = id;
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
        if (!(object instanceof Vol)) {
            return false;
        }
        Vol other = (Vol) object;
        if ((this.id == null && other.id != null) || (this.id != null && !this.id.equals(other.id))) {
            return false;
        }
        return true;
    }

    public String getNumeroVol() {
        return numeroVol;
    }

    public void setNumeroVol(String numeroVol) {
        this.numeroVol = numeroVol;
    }

    public Date getDateDepart() {
        return dateDepart;
    }

    public void setDateDepart(Date dateDepart) {
        this.dateDepart = dateDepart;
    }

    public Date getDateArrivee() {
        return dateArrivee;
    }

    public void setDateArrivee(Date dateArrivee) {
        this.dateArrivee = dateArrivee;
    }

    public String getVilleDepart() {
        return villeDepart;
    }

    public void setVilleDepart(String villeDepart) {
        this.villeDepart = villeDepart;
    }

    public String getVilleArrivee() {
        return villeArrivee;
    }

    public void setVilleArrivee(String villeArrivee) {
        this.villeArrivee = villeArrivee;
    }

    public Integer getNombrePlacesDisponibles() {
        return nombrePlacesDisponibles;
    }

    public void setNombrePlacesDisponibles(Integer nombrePlacesDisponibles) {
        this.nombrePlacesDisponibles = nombrePlacesDisponibles;
    }

    public List<Reservation> getListeVols() {
        return listeVols;
    }

    public void setListeVols(List<Reservation> listeVols) {
        this.listeVols = listeVols;
    }

    @Override
    public String toString() {
        return "Vol{" + "id=" + id + ", numeroVol=" + numeroVol + ", dateDepart=" + dateDepart + ", dateArrivee=" + dateArrivee + ", villeDepart=" + villeDepart + ", villeArrivee=" + villeArrivee + ", nombrePlacesDisponibles=" + nombrePlacesDisponibles + '}';
    }
    
    
}
