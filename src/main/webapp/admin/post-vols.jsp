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
        <li class="breadcrumb-item active">Vol</li>
        <li class="breadcrumb-item active" aria-current="page"><a href="${rootPage}/admin/vols"">Liste</a></li>
        <li class="breadcrumb-item active" aria-current="page"><a href="${rootPage}/admin/vol"">Enregistrement</a></li>
    </ol>
</nav>
<section class="container">
        <ul>
            <c:forEach items="${listeVols}" var="vol">
                <li>${vol}</li>
            </c:forEach>
        </ul>
            
        <form method="post" action="${routeVol}">
            <label for="numeroVol">Numero de vol :</label><br>
            <input type="text" id="numeroVol" name="numeroVol">
            <br>
            <label for="dateDepart">Date de départ</label><br>
            <input type="datetime-local" id="dateDepart" name="dateDepart" value = "2019-01-01T00:00:00" >
            <br>
            <label for="dateArrivee">Date d'arrivée</label><br>
            <input type="datetime-local" id="dateArrivee" name="dateArrivee" value = "2019-01-01T00:00:00">
            <br>
            <label for="villeDeaprt">Ville de départ</label><br>
            <input type="text" id="villeDepart" name="villeDepart">
            <br>
            <label for="villeArrivee">Ville d'arrivée</label><br>
            <input type="text" id="VilleArrivee" name="villeArrivee">
            <br>
            <label for="placeDispo">Nombre de places disponobles</label><br>
            <input type="text" id="placeDispo" name="placeDispo">
            <br>
            <button>Submit</button>
        </form>

</section>

<c:import url="${rootPage}admin/views/footer.jsp"></c:import>