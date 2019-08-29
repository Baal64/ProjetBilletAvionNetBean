<%-- 
    Document   : projet-login.jsp
    Created on : 26 août 2019, 13:55:13
    Author     : itsadeki
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link rel="stylesheet" href="./assets/css/projet-login.css">
    <meta name="viewport" content="width=device-width"/>

    <title>Login</title>
</head>

<body>
    <section class="section_login">
        <h1 id="login_titre">Identifiez vous</h1>

        <h2 class="login_soustitre">
            Pas encore membre?
        </h2>
        <a class="login_soustitre_href" href="./register">S'inscrire : </a>

        <p>
            <input class="ipd" type="text" data-new-placeholder="Identifiant ou E-mail"
                placeholder="Identifiant ou E-mail">
        </p>
        <p>
            <input class="ipd" type="text" data-new-placeholder="Mot de passe" placeholder="Mot de passe">
        </p>
        <p class="p_button">
            <button  type="submit">Connexion</button>
        </p>




        <p class="label_remenber">
            <label for="remenber_me"></label>
            <input type="checkbox" name="CSS" value="remenber_me" id="remenber_me" checked="checked" />
            Se souvenir de moi
        </p>
        <a class="a_mdp" href="./home"> Identifiant ou mot de passe oublié? </a>
    </section>


</body>

</html>