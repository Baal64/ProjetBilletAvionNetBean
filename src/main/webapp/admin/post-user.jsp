<%-- 
    Document   : post-user
    Created on : 26 août 2019, 18:59:39
    Author     : itsadeki
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<c:import url="${rootPage}/admin/src/views/header.jsp"></c:import>

<nav aria-label="breadcrumb">
    <ol class="breadcrumb">
        <li class="breadcrumb-item active">Utilisateur</li>
        <li class="breadcrumb-item active" aria-current="page"><a href="${listPage}">Liste</a></li>
        <li class="breadcrumb-item active" aria-current="page"><a href="${userPage}">Enregistrement</a></li>
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

<c:import url="${rootPage}/admin/src/views/footer.jsp"></c:import>