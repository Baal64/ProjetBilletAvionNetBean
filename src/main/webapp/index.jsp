<%-- 
    Document   : index
    Created on : 26 août 2019, 13:53:30
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

        <section id="jumbotron">
            <ul id="jumbotron_carousel" class="jumbotron_carousel_animation_0">
                <li id="jumbotron_carousel_item_1" class="jumbotron_carousel_item">
                    <img class="jumbotron_carousel_item_img" src="assets/img/banner-01.jpg" alt="banner">
                    <article class="jumbotron_carousel_item_banner">
                        <h2 class="jumbotron_carousel_item_banner_titre">Dicover the
                            <strong class="jumbotron_carousel_item_banner_strong">
                                Journey Of a Lifetime
                            </strong>
                        </h2>
                        <p class="jumbotron_carousel_item_banner_text">
                            Let our experts plan your private, tailor-made & seamless
                            tour in 38 inspiring destinations.
                        </p>
                        <a class="jumbotron_carousel_item_banner_link_1" href="#">SEE MORE</a>
                        <a class="jumbotron_carousel_item_banner_link_2" href="#">JOIN NOW</a>
                    </article>
                </li>
                <li id="jumbotron_carousel_item_2" class="jumbotron_carousel_item">
                    <img class="jumbotron_carousel_item_img" src="assets/img/banner-02.jpg" alt="banner">
                    <article class="jumbotron_carousel_item_banner">
                        <h2 class="jumbotron_carousel_item_banner_titre">Dicover the
                            <strong class="jumbotron_carousel_item_banner_strong">
                                Journey Of a Lifetime
                            </strong>
                        </h2>
                        <p class="jumbotron_carousel_item_banner_text">
                            Let our experts plan your private, tailor-made & seamless
                            tour in 38 inspiring destinations.
                        </p>
                        <a class="jumbotron_carousel_item_banner_link_1" href="#">SEE MORE</a>
                        <a class="jumbotron_carousel_item_banner_link_2" href="#">JOIN NOW</a>
                    </article>
                </li>
                <li id="jumbotron_carousel_item_3" class="jumbotron_carousel_item">
                    <img class="jumbotron_carousel_item_img" src="assets/img/banner-03.jpg" alt="banner">
                    <article class="jumbotron_carousel_item_banner">
                        <h2 class="jumbotron_carousel_item_banner_titre">Dicover the
                            <strong class="jumbotron_carousel_item_banner_strong">
                                Journey Of a Lifetime
                            </strong>
                        </h2>
                        <p class="jumbotron_carousel_item_banner_text">
                            Let our experts plan your private, tailor-made & seamless
                            tour in 38 inspiring destinations.
                        </p>
                        <a class="jumbotron_carousel_item_banner_link_1" href="#">SEE MORE</a>
                        <a class="jumbotron_carousel_item_banner_link_2" href="#">JOIN NOW</a>
                    </article>
                </li>
            </ul>
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