<%-- 
    Document   : list-user
    Created on : 26 août 2019, 18:59:28
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
					<li class="nav-item active margin_right_32">
						<a class="nav-link" href="http://localhost:3000">Utilisateur <span class="sr-only">(current)</span></a>
					</li>
				</ul>
			</div>
		</nav>
	</header>

	<nav aria-label="breadcrumb">
		<ol class="breadcrumb">
			<li class="breadcrumb-item active">Utilisateur</li>
			<li class="breadcrumb-item active" aria-current="page"><a href="${listPage}">Liste</a></li>
			<li class="breadcrumb-item active" aria-current="page"><a href="${userPage}">Enregistrement</a></li>
		</ol>
	</nav>
	
	<section class="container">
		<div class="row margin_bottom_16">
			<form class="form-inline my-2 my-lg-0">
				<input class="form-control mr-sm-2" type="search" placeholder="Search" aria-label="Search">
				<button class="btn btn-outline-success my-2 my-sm-0" type="submit">Rechercher</button>
			</form>
		</div>
		<div class="row">
			<table class="table table-dark">
				<thead>
					<tr>
						<th scope="col">#</th>
						<th scope="col">Nom</th>
						<th scope="col">Prenom</th>
						<th scope="col">Email</th>
						<th scope="col">Profil</th>
					</tr>
				</thead>
				<tbody>
                                    <c:forEach items="${listeUtilisateur}" var="utilisateur">
					<tr>
						<th scope="row">${utilisateur.id}</th>
						<td>${utilisateur.nom}</td>
						<td>${utilisateur.prenom}</td>
						<td>${utilisateur.mail}</td>
						<td>
<!--							<a class="btn btn-primary" href="#" role="button">Voir</a>-->
							<a class="btn btn-primary" href="#" role="button">Modifier</a>
						</td>
					</tr>
                                    </c:forEach>
				</tbody>
			</table>
		</div>
	</section>

	<script src="https://unpkg.com/ionicons@4.2.2/dist/ionicons.js"></script>
	<script src="./src/assets/js/main.js"></script>
</body>

</html>