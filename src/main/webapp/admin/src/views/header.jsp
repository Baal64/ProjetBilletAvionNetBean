<%-- 
    Document   : header
    Created on : 27 août 2019, 08:52:55
    Author     : itsadeki
--%>

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
                                    <a class="nav-link" href="http://localhost:3000">Passager <span class="sr-only">(current)</span></a>
                            </li>
                            <li class="nav-item margin_right_32">
                                    <a class="nav-link" href="http://localhost:3000">Reservation <span class="sr-only">(current)</span></a>
                            </li>
                            <li class="nav-item margin_right_32">
                                    <a class="nav-link" href="http://localhost:3000">Utilisateur <span class="sr-only">(current)</span></a>
                            </li>
                    </ul>
            </div>
        </nav>
    </header>
