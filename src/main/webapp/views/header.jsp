<%-- 
    Document   : header
    Created on : 28 août 2019, 13:46:12
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
