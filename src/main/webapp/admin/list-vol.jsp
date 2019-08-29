<%-- 
    Document   : test_vol
    Created on : 26 août 2019, 17:02:53
    Author     : alexa
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<c:import url="${rootPage}admin/views/header.jsp"></c:import>

<nav aria-label="breadcrumb">
    <ol class="breadcrumb">
        <li class="breadcrumb-item active">Vols</li>
        <li class="breadcrumb-item active" aria-current="page"><a href="${rootPage}/admin/list-vol">Liste</a></li>
        <li class="breadcrumb-item active" aria-current="page"><a href="${rootPage}/admin/create-vol">Enregistrement</a></li>
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
                    <th scope="col">Numero de vol</th>
                    <th scope="col">places</th>
                    <th scope="col">Date départ</th>
                    <th scope="col">date arrivée</th>
                    <th scope="col">ville de départ</th>
                    <th scope="col">ville arrivée</th>

                </tr>
            </thead>
            <tbody>
                <c:forEach items="${listeVols}" var="vol">
                    <tr>
                        <th scope="row">${vol.id}</th>
                        <td>${vol.numeroVol}</td>
                        <td>${vol.nombrePlacesDisponibles}</td>
                        <td>${vol.dateDepart}</td>
                        <td>${vol.dateArrivee}</td>
                        <td>${vol.villeDepart}</td>
                        <td>${vol.villeArrivee}</td>
                        <td>
                            <a class="btn btn-danger" href="${rootPage}/admin/delete-vol?idVol=${vol.id}" role="button">Supprimer</a>
                        </td>
                    </tr>
                </c:forEach>
            </tbody>
        </table>
    </div>
</section>

<c:import url="${rootPage}admin/views/footer.jsp"></c:import>