<%-- 
    Document   : list-volo
    Created on : 29 août 2019, 12:22:50
    Author     : itsadeki
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<c:import url="views/header.jsp"></c:import>

        <section id="vol">
        <ul id="vol_gallery">
        <c:forEach items="${listeVols}" var="vol">
            <li class="vol_gallery_item">
                <a href="create-reservation?idVol=${vol.id}">
                    <h3 class="vol_gallery_item_titre">${vol.villeArrivee}</h3>
                    <div class="vol_gallery_item_img_container">
                        <img class="vol_gallery_item_img" src="./assets/img/banner-01.jpg" alt="">
                    </div>
                    <span class="vol_gallery_item_reservation">Voir</span>
                </a>
            </li>
            </c:forEach>
        </ul>
    </section>
    
<c:import url="views/footer.jsp"></c:import>
