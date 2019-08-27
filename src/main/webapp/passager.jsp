<%-- 
    Document   : passager
    Created on : 26 août 2019, 16:50:11
    Author     : Formation
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <ul>
            <c:forEach items="${listePassager}" var="passager">
                <li>${passager}</li>
            </c:forEach>
        </ul>
            
        <form method="POST" action="http://localhost:8080/streaming_web_maven/passager">
            <p>
                <label for="inputNom">Nom</label>
                <input id="inputNom" type="text" name="nom" placeholder="Nom" />
            </p>

            <p>
                <label for="inputPrenom">Prenom</label>
                <input id="inputPrenom" type="text" name="prenom" placeholder="Prenom">
            </p>

            <p>
                <label for="inputNumPlace">Nombre de Place</label>
                <input id="inputNumPlace" type="number" name="numeroPlace">
            </p>

            <button>Enregistrer</button>
        </form>
    </body>
</html>
