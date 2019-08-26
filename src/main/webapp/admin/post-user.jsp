<%-- 
    Document   : post-user
    Created on : 26 août 2019, 18:59:39
    Author     : itsadeki
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="fr">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Admin</title>
    <link rel="icon" href="src/favicon.ico" />
    <link rel="icon" type="image/png" href="src/assets/img/icon.png" />
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
        integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    <link rel="stylesheet" href="src/assets/css/style.css">
    <link rel="stylesheet" href="src/assets/css/media.css">
</head>

<body>

    <header>
        <nav class="navbar navbar-expand-lg navbar-light bg-light">
            <a class="navbar-brand margin_right_64" href="http://localhost:3000">Admin</a>
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent"
                aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>

            <div class="collapse navbar-collapse" id="navbarSupportedContent">
                <ul class="navbar-nav mr-auto">
                    <li class="nav-item margin_right_32">
                        <a class="nav-link" href="http://localhost:3000">Vol <span class="sr-only">(current)</span></a>
                    </li>
                    <li class="nav-item margin_right_32">
                        <a class="nav-link" href="http://localhost:3000">Passager <span
                                class="sr-only">(current)</span></a>
                    </li>
                    <li class="nav-item margin_right_32">
                        <a class="nav-link" href="http://localhost:3000">Reservation <span
                                class="sr-only">(current)</span></a>
                    </li>
                    <li class="nav-item active margin_right_32">
                        <a class="nav-link" href="http://localhost:3000">Utilisateur <span
                                class="sr-only">(current)</span></a>
                    </li>
                </ul>
            </div>
        </nav>
    </header>

    <nav aria-label="breadcrumb">
        <ol class="breadcrumb">
            <li class="breadcrumb-item active">Utilisateur</li>
            <li class="breadcrumb-item active" aria-current="page"><a href="user.html">Liste</a></li>
            <li class="breadcrumb-item active" aria-current="page"><a href="post-user.html">Enregistrement</a></li>
        </ol>
    </nav>

    <section class="container">
        <form method="POST">
            <div class="form-row">
                <div class="form-group col-md-6">
                    <label for="inputNom">Nom</label>
                    <input type="text" class="form-control" id="inputNom" name="nom" placeholder="Nom">
                </div>
                <div class="form-group col-md-6">
                    <label for="inputPrenom">Prenom</label>
                    <input type="text" class="form-control" id="inputPrenom" name="prenom" placeholder="Prenom">
                </div>
            </div>
            <div class="form-row">
                <div class="form-group col-md-6">
                    <label for="inputEmail">Email</label>
                    <input type="email" class="form-control" id="inputEmail" name="mail" placeholder="Email">
                </div>
                <div class="form-group col-md-6">
                    <label for="inputPassword">Mot de Passe</label>
                    <input type="password" class="form-control" id="inputPassword" name="motDePasse" placeholder="Votre mot de passe">
                </div>
            </div>
            <div class="form-group">
                <label for="inputAddress">Addresse</label>
                <input type="text" class="form-control" id="inputAddress" name="rue" placeholder="Votre Adresse">
            </div>
            <div class="form-row">
                <div class="form-group col-md-4">
                    <label for="inputCity">Ville</label>
                    <input type="text" class="form-control" id="inputCity" name="ville" placeholder="Votre Ville">
                </div>
                <div class="form-group col-md-4">
                    <label for="inputCP">Code Postal</label>
                    <input type="text" class="form-control" id="inputCP" name="codePostal" placeholder="Votre Code Postal">
                </div>
                <div class="form-group col-md-4">
                    <label for="inputPhone">Telephone</label>
                    <input type="text" class="form-control" id="inputPhone" name="telephone" placeholder="Votre numero de Telephone">
                </div>
            </div>
            <button type="submit" class="btn btn-primary">Enregistrement</button>
        </form>
    </section>

    <script src="https://unpkg.com/ionicons@4.2.2/dist/ionicons.js"></script>
    <script src="./src/assets/js/main.js"></script>
    <script src="/socket.io/socket.io.js"></script>
    <script>
        var socket = io();

        socket.on('reload', function (msg) {
            window.location.assign(window.location);
        });
    </script>
</body>

</html>