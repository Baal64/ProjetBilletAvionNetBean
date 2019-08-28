<%-- 
    Document   : list-user
    Created on : 26 août 2019, 18:59:28
    Author     : itsadeki
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<c:import url="${rootPage}admin/views/header.jsp"></c:import>

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
                            <a class="btn btn-primary" href="#" role="button">Modifier</a>
                        </td>
                    </tr>
                </c:forEach>
            </tbody>
        </table>
    </div>
</section>
    
<c:import url="${rootPage}admin/views/footer.jsp"></c:import>