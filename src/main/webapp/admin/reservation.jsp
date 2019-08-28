<%-- 
    Document   : reservation
    Created on : 28 août 2019, 09:19:25
    Author     : itsadeki
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<c:import url="${rootPage}admin/views/header.jsp"></c:import>

<nav aria-label="breadcrumb">
    <ol class="breadcrumb">
        <li class="breadcrumb-item active">Vols</li>
        <li class="breadcrumb-item active" aria-current="page"><a href="${listPage}">Liste</a></li>
        <li class="breadcrumb-item active" aria-current="page"><a href="${userPage}">Enregistrement</a></li>
    </ol>
</nav>

<section class="container">

<h2>A Faire</h2>

</section>

<c:import url="${rootPage}admin/views/footer.jsp"></c:import>