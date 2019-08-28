<%-- 
    Document   : projet-register
    Created on : 26 août 2019, 13:56:51
    Author     : itsadeki
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="fr">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta http-equiv="X-UA-Compatible" content="ie=edge">
        <link rel="stylesheet" href="<c:url value="/assets/css/projet-login.css"/>">
        <meta name="viewport" content="width=device-width"/>

        <title>register</title>
    </head>
    <body>
        <section class="section_login">
            <h1 id="login_titre">Enregistrez vous</h1>

            <h2 class="login_soustitre">
                Déja membre?
            </h2>
            <a class="login_soustitre_href" href="./login.html">Cliquez ici: </a>
            <form method="post">
                <p class="email">
                    <input name="nom" class="ipd" type="text" data-new-placeholder="Nom" placeholder="Nom">
                </p>

                <p >
                    <input name="prenom" class="ipd" type="text" data-new-placeholder="Prénom" placeholder="Prénom">
                </p>

                <p >
                    <input name="tel" class="ipd" type="text" data-new-placeholder="Téléphone" placeholder="Téléphone">
                </p>

                <p >
                    <input name="mail" class="ipd" type="email" data-new-placeholder="E-mail" placeholder="E-mail">
                </p>

                <p >
                    <input name="rue" class="ipd" type="text" data-new-placeholder="Rue" placeholder="Rue">
                </p>

                <p >
                    <input name="ville" class="ipd" type="text" data-new-placeholder="Ville" placeholder="Ville">
                </p>

                <p >
                    <input name="cp" class="ipd" type="text" data-new-placeholder="Code Postal" placeholder="Code Postal">
                </p>

                <p>
                    <input name="mdp1" class="ipd" type="text" data-new-placeholder="Mot de passe" placeholder="Mot de passe">
                </p>

                <p>
                    <input name="mdp2" class="ipd" type="text" data-new-placeholder="Ressaisir Mot de passe" placeholder="Ressaisir Mot de passe">
                </p>

                <p class="p_button">
                    <button  type="submit">S'enregistrer</button>
                </p>
                <p class="label_remenber"> 
                    <label for="remenber_me"></label>
                    <input type="checkbox" name="CSS" value="remenber_me" id="remenber_me"
                           checked="checked" />
                    Se souvenir de moi
                </p>
            </form>






            
            <a class="a_mdp" href="./index.html">Quitter</a>
        </section>
    </body>
</html>