<%-- 
    Document   : reservations
    Created on : 26 août 2019, 13:55:59
    Author     : itsadeki
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<c:import url="views/header.jsp"></c:import>

        <section id = "section_reservation">
            <div id = "section_reservation_infos_vol_general" class= "section_module">
                <div id = "section_reservation_villes">
                    <div id = "section_reservation_villes_villes">
                        <p id = "section_reservation_ville_depart">${vol.villeDepart}</p>
                        <p>></p>
                        <p id = "section_reservation_ville_destination">${vol.villeArrivee}</p>
                    </div>
                    <!--                    
                    <div id = "section_reservation_villes_AR_nbPassagers">
                        <p>Aller / Retour</p>
                        <p>2 personnes</p>

                    </div>
                    -->
                </div>
                <div id="section_reservation_dates">
                    <p id="section_reservation_date_depart">${vol.dateDepart}</p>
                    <p>|</p>
                    <p id="section_reservation_date_retour">${vol.dateArrivee}</p>
                </div>
                <button id = "section_reservation_modifier_bouton">modifier</button>
            </div>
<!--
            <div id = "section_reservation_infos_vol_aller" class= "section_module">
                <div class= "section_sous_module">
                    <p>Vol aller :</p>
                    <p id = "section_reservation_infos_vol_aller_ville">Biarritz</p>
                </div>
                <div class = "sous_module_infos_vol">
                    <p>aéroport de Biarritz</p>
                    <p>Aéroport de Paris orly Sud</p>
                </div>
                <div class = "sous_module_infos_vol">
                    <p>Air France KLM</p>
                    <div class = "section_sous_sous_module">
                        <p>AB2018</p>
                        <p>|</p>
                        <p>Airbus A320</p>
                    </div>
                </div>
                <div class= "section_sous_module">
                   <p>1h15</p>
                </div>

            <div id="section_reservation_infos_vol_retour" class= "section_module">
                <div class= "section_sous_module">
                    <p>Vol retour :</p>
                    <p id = "section_reservation_infos_vol_retour_ville">Paris</p>
                </div>
                <div class = "sous_module_infos_vol">
                    <p>Aéroport de Paris orly Sud</p>
                    <p>aéroport de Biarritz</p>
                </div>
                <div class = "sous_module_infos_vol">
                    <p>Air France KLM</p>
                    <div class = "section_sous_sous_module">
                        <p>AB2018</p>
                        <p>|</p>
                        <p>Airbus A320</p>
                    </div>
                </div>
                <div class= "section_sous_module">
                    <p>1h15</p>
                </div>
            </div>
            </div>-->

            <div id="section_reservation_infos_passager" class= "section_module">
                <div class= "section_sous_module2">
                    <p>Informations passager 1</p>
                    <div>
                        <label for="nom" class = "section_reservation_infos_passager">Nom</label>
                        <input type="text" name="nom" id="section_reservation_infos_passager_nom" class = "section_reservation_infos_passager">
                    </div>
                   <div class = "section_reservation_infos_passager_prenom">
                        <label for="prenom" class = "section_reservation_infos_passager">Prénom</label>
                        <input type="text" name="prenom" id="section_reservation_infos_passager_prenom" class = "section_reservation_infos_passager">
                   </div>
 
                </div>
                <button class = "section_reservation_bouton">supprimer</button>
            </div>

            <div id="section_reservation_infos_passager_2" class= "section_module">
                <div class= "section_sous_module2">
                    <p>Informations passager 2</p>
                    <div>
                        <label for="nom2" class = "section_reservation_infos_passager">Nom</label>
                        <input type="text" name="nom2" id="section_reservation_infos_passager_nom_2" class = "section_reservation_infos_passager">
                    </div>
                    <div class = "section_reservation_infos_passager_prenom">
                        <label for="prenom2" class = "section_reservation_infos_passager">Prénom</label>
                        <input type="text" name="prenom2" id="section_reservation_infos_passager_prenom" class = "section_reservation_infos_passager">
                    </div>
                </div>
                <button class = "section_reservation_bouton">supprimer</button>
            </div>   
            <div id="section_reservation_ajout_pasager_payer" class= "section_module">
                    <button id = "section_reservation_ajouter_bouton" class ="section_reservation_bouton">Ajouter passager</button>
                    <button id = "section_reservation_payer_bouton" class ="section_reservation_bouton">Payer</button>
            </div>
        </section>
    
<c:import url="views/footer.jsp"></c:import>