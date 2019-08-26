<%-- 
    Document   : test
    Created on : 26 août 2019, 14:17:41
    Author     : itsadeki
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Test JSP Page</title>
    </head>
    <body>
       
        <ul>
        <c:forEach items="${listeUtilisateur}" var="utilisateur">
            <li>${utilisateur}</li>
        </c:forEach>
        </ul>


        <form method="post" action="http://localhost:8084/streaming_web_maven/test">
            <label for="nom">
                <input type="text" id="nom" name="nom">
            </label><br>
            <label for="prenom">
                <input type="text" id="prenom" name="prenom">
            </label><br>
            <label for="mail">
                <input type="text" id="mail" name="mail">
            </label><br>
            <label for="motDePasse">
                <input type="text" id="motDePasse" name="motDePasse">
            </label><br>
            <label for="rue">
                <input type="text" id="rue" name="rue">
            </label><br>
            <label for="ville">
                <input type="text" id="ville" name="ville">
            </label><br>
            <label for="codePostal">
                <input type="text" id="codePostal" name="codePostal">
            </label><br>
            <label for="telephone">
                <input type="text" id="telephone" name="telephone">
            </label><br>

            <button>Submit</button>
        </form>

    </body>
</html>
