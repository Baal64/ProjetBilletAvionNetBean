<%-- 
    Document   : reservations
    Created on : 26 août 2019, 13:55:59
    Author     : itsadeki
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="fr">

    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta http-equiv="X-UA-Compatible" content="ie=edge">
        <title>Express</title>
        <link rel="icon" href="src/favicon.ico" />
        <link rel="icon" type="image/png" href="./assets/img/icon.png" />
        <link rel="stylesheet" href="./assets/css/style.css">
        <link rel="stylesheet" href="./assets/css/header.css">
        <link rel="stylesheet" href="./assets/css/footer.css">
        <link rel="stylesheet" href="./assets/css/jumbotron.css">
        <link rel="stylesheet" href="./assets/css/media.css">
        <link rel="stylesheet" href="./assets/css/reservations.css">

    </head>

    <body>

        <header>
            <ul id="header_top">
                <li id="header_top_item_facebook" class="header_top_item">
                    <a class="header_top_item_hover" href="#">
                        <ion-icon name="logo-facebook"></ion-icon>
                    </a>
                </li>
                <li id="header_top_item_twitter" class="header_top_item">
                    <a class="header_top_item_hover" href="#">
                        <ion-icon name="logo-twitter"></ion-icon>
                    </a>
                </li>
                <li id="header_top_item_instagram" class="header_top_item">
                    <a class="header_top_item_hover" href="#">
                        <ion-icon name="logo-instagram"></ion-icon>
                    </a>
                </li>
                <li id="header_top_item_offer" class="header_top_item">
                    <a class="header_top_item_hover" href="#">
                        <p id="header_top_offer_text">tour 90% off </p>
                    </a>
                </li>
                <li id="header_top_item_contact" class="header_top_item">
                    <ion-icon name="contact"></ion-icon>
                </li>
                <li id="header_top_item_login" class="header_top_item header_top_font">
                    <a class="header_top_item_hover" href="./login.html">Login</a>
                </li>
                <li id="header_top_item_slash" class="header_top_item header_top_font">
                    /
                </li>
                <li id="header_top_item_register" class="header_top_item header_top_font">
                    <a class="header_top_item_hover" href="./projet-register.html">Register</a>
                </li>
            </ul>
            <nav id="header_nav" class="header_nav_init">
                <ul id="header_nav_list">
                    <li id="header_nav_list_item_logo" class="header_nav_list_item">
                        <a href=""></a>
                    </li>
                    <li id="header_nav_list_item_1" class="header_nav_list_item">
                        <a class="header_nav_list_link" href="">home</a>
                    </li>
                    <li id="header_nav_list_item_2" class="header_nav_list_item">
                        <a class="header_nav_list_link" href="">home</a>
                    </li>
                    <li id="header_nav_list_item_3" class="header_nav_list_item">
                        <a class="header_nav_list_link" href="">home</a>
                    </li>
                    <li id="header_nav_list_item_search">
                        <a href="">
                            Planifier un Vol <ion-icon name="airplane"></ion-icon>
                        </a>
                    </li>
                </ul>
            </nav>
        </header>

        <section id = "section_reservation">
            <div id = "section_reservation_infos_vol_general" class= "section_module">
                <div id = "section_reservation_villes">
                    <div id = "section_reservation_villes_villes">
                        <p id = "section_reservation_ville_depart">Ville de départ</p>
                        <p>></p>
                        <p id = "section_reservation_ville_destination">Ville de destination</p>
                    </div>
                    <div id = "section_reservation_villes_AR_nbPassagers">
                        <p>Aller / Retour</p>
                        <p>2 personnes</p>

                    </div>
                </div>
                <div id="section_reservation_dates">
                    <p id="section_reservation_date_depart">27 août 2019</p>
                    <p>|</p>
                    <p id="section_reservation_date_retour">29 août 2019</p>
                </div>
                <button id = "section_reservation_modifier_bouton">modifier</button>
            </div>

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

        <footer id="footer_div1_layer">
            <div id="footer_div1">
                <div id ="footer_overlay">
                    <div id="footer_wrap">
                        <div id="footer_div1_suivez_nous">
                            <div id="footer_div1_suivez_nous_liens">
                                <h5 class="footer_div1_h5">suivez - nous</h5>
                                <ul id="footer_div1_icons">
                                    <li class="footer_li">
                                        <a class="footer_li_a" href="">
                                            <ion-icon name="logo-facebook">
                                            </ion-icon>
                                        </a>
                                    </li>
                                    <li class="footer_li">
                                        <a class="footer_li_a" href="">
                                            <ion-icon name="logo-twitter">
                                            </ion-icon>
                                        </a>
                                    </li>
                                    <li class="footer_li">
                                        <a class="footer_li_a" href="">
                                            <ion-icon name="logo-googleplus">
                                            </ion-icon>
                                        </a>
                                    </li>
                                    <li class="footer_li">
                                        <a class="footer_li_a" href="">
                                            <ion-icon name="logo-instagram">
                                            </ion-icon>
                                        </a>
                                    </li>
                                    <li class="footer_li">
                                        <a class="footer_li_a" href="">
                                            <ion-icon name="logo-youtube">
                                            </ion-icon>
                                        </a>
                                    </li>
                                    <li class="footer_li">
                                        <a class="footer_li_a" href="">
                                            <ion-icon name="logo-github">
                                            </ion-icon>
                                        </a>
                                    </li>
                                    <li class="footer_li">
                                        <a class="footer_li_a" href="">
                                            <ion-icon name="logo-vimeo">
                                            </ion-icon>
                                        </a>
                                    </li>
                                    <li class="footer_li">
                                        <a class="footer_li_a" href="">
                                            <ion-icon name="logo-skype">
                                            </ion-icon>
                                        </a>
                                    </li>
                                </ul>
                            </div>

                            <div id="footer_separateur"></div>

                            <div id="footer_div1_abonnement">
                                <h5 class="footer_div1_h5">restez connecté</h5>
                                <span class="footer_span" id="footer_souscrire">Souscrire à nos offres</span>
                                <div id="footer_subscribe_div">
                                    <input type="mail" id="footer_subscribe_input" placeholder="adresse mail">
                                    <button id="footer_subscribe_button">souscrire</button>
                                </div>
                            </div>
                        </div>

                        <div id="footer_liens_importants">
                            <h5 class="footer_h5">Liens importants</h5>
                            <ul id="footer_liens_importants_ul">
                                <li class="footer_li_liens">
                                    <a href="">Vols</a>
                                </li>
                                <li class="footer_li_liens">
                                    <a href="">Tours</a>
                                </li>
                                <li class="footer_li_liens">
                                    <a href="">Destination</a>
                                </li>
                                <li class="footer_li_liens">
                                    <a href="">Hotel</a>
                                </li>
                                <li class="footer_li_liens">
                                    <a href="">Packages</a>
                                </li>
                                <li class="footer_li_liens">
                                    <a href="">Transfer</a>
                                </li>
                                <li class="footer_li_liens">
                                    <a href="">Car</a>
                                </li>
                                <li class="footer_li_liens">
                                    <a href="">Cruies</a>
                                </li>
                            </ul>
                        </div>

                        <div id="footer_top_destinations">
                            <h5 class="footer_h5">Top destinations</h5>
                            <ul id="footer_top_destinations_ul">
                                <li class="footer_li_destination">
                                    <a href="">
                                        <img src="./assets/images/widget-gallery-img1.jpg" alt="Sidney">
                                        <ion-icon name="search"></ion-icon>
                                    </a>
                                </li>
                                <li class="footer_li_destination">
                                    <a href="">
                                        <img src="./assets/images/widget-gallery-img2.jpg" alt="Londres">
                                        <ion-icon name="search"></ion-icon>
                                    </a>
                                </li>
                                <li class="footer_li_destination">
                                    <a href="">
                                        <img src="./assets/images/widget-gallery-img3.jpg" alt="New-York">
                                        <ion-icon name="search"></ion-icon>
                                    </a>
                                </li>
                                <li class="footer_li_destination">
                                    <a href="">
                                        <img src="./assets/images/widget-gallery-img4.jpg" alt="Paris">
                                        <ion-icon name="search"></ion-icon>
                                    </a>
                                </li>
                                <li class="footer_li_destination">
                                    <a href="">
                                        <img src="./assets/images/widget-gallery-img5.jpg" alt="Barcelone">
                                        <ion-icon name="search"></ion-icon>
                                    </a>
                                </li>
                                <li class="footer_li_destination">
                                    <a href="">
                                        <img src="./assets/images/widget-gallery-img6.jpg" alt="">
                                        <ion-icon name="search"></ion-icon>
                                    </a>
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>

            <div id="footer_copyrights">
                <div id="footer_copyrights_wrap">
                    <span id="footer_copyright_span" class="footer_span">Copyright - tous droits reservés</span>
                    <ul id="footer_ul_cartes">
                        <li class="footer_li">
                            <a href="">
                                <img src="./assets/images/card-1.jpg" class="footer_carte_li_image" alt="American express">
                            </a>
                        </li>
                        <li class="footer_li">
                            <a href="">
                                <img src="./assets/images/card-2.jpg" class="footer_carte_li_image" alt="Master Card">
                            </a>
                        </li>
                        <li class="footer_li">
                            <a href="">
                                <img src="./assets/images/card-3.jpg" class="footer_carte_li_image" alt="Discover tour">
                            </a>
                        </li>
                        <li class="footer_li">
                            <a href="">
                                <img src="./assets/images/card-4.jpg" class="footer_carte_li_image" alt="Visa">
                            </a>
                        </li>
                    </ul>
                </div>
            </div>
        </footer>

        <script src="https://unpkg.com/ionicons@4.2.2/dist/ionicons.js"></script>
        <script src="./assets/js/script.js"></script>

    </body>
</html>