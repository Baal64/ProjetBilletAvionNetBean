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
        <li class="breadcrumb-item active" aria-current="page"><a href="${rootPage}/admin/list-vol">Liste</a></li>
        <li class="breadcrumb-item active" aria-current="page"><a href="${rootPage}/admin/create-vol">Enregistrement</a></li>
    </ol>
</nav>
   
<div class="container">
    <table class="table table-striped">
        <tbody>
            <tr>
                <td colspan="1">
                    <form method="post" action="${routeVol}" class="well form-horizontal">
                        <fieldset>
                            <div class="form-group">
                                <label class="col-md-4 control-label">Numero de vol</label>
                                <div class="inputGroupContainer">
                                    <div class="input-group-prepend">
                                        <span class="input-group-text">
                                            <i class="fas fa-plane"></i>
                                        </span>
                                        <input name="numeroVol" placeholder="Numero de vol" class="form-control" required="true" value="" type="text" id="numeroVol">
                                    </div>
                                </div>
                            </div>

                            <div class="form-group">
                                <label class="col-md-4 control-label">Date de départ</label>
                                <div class="inputGroupContainer">
                                    <div class="input-group-prepend">
                                        <span class="input-group-text">
                                            <i class="fas fa-calendar-alt"></i>
                                        </span>
                                        <input id="dateDepart" class="form-control" required="true" name="dateDepart" value = "2019-01-01T00:00:00" type="datetime-local">
                                    </div>
                                </div>
                            </div>

                            <div class="form-group">
                                <label class="col-md-4 control-label">Date d'arrivée</label>
                                <div class="inputGroupContainer">
                                    <div class="input-group-prepend">
                                        <span class="input-group-text">
                                            <i class="fas fa-calendar-alt"></i>
                                        </span>
                                        <input id="dateArrivee" name="dateArrivee" class="form-control" required="true" value = "2019-01-01T00:00:00" type="datetime-local">
                                    </div>
                                </div>
                            </div>

                            <div class="form-group">
                                <label class="col-md-4 control-label">Ville de départ</label>
                                <div class="inputGroupContainer">
                                    <div class="input-group-prepend">
                                        <span class="input-group-text">
                                            <i class="fas fa-plane-departure"></i>
                                        </span>
                                        <input id="villeDepart" name="villeDepart" placeholder="Ville de départ" class="form-control" required="true" value="" type="text">
                                    </div>
                                </div>
                            </div>

                            <div class="form-group">
                                <label class="col-md-4 control-label">Ville d'arrivée</label>
                                <div class="inputGroupContainer">
                                    <div class="input-group-prepend">
                                        <span class="input-group-text">
                                            <i class="fas fa-plane-arrival"></i>
                                        </span>
                                        <input id="villeArrivee" name="villeArrivee" placeholder="ville d'arrivée" class="form-control" required="true" value="" type="text">
                                    </div>
                                </div>
                            </div>

                            <div class="form-group">
                                <label class="col-md-4 control-label">Nombre de places disponibles</label>
                                <div class="inputGroupContainer">
                                    <div class="input-group-prepend">
                                        <span class="input-group-text">
                                            <i class="fas fa-users"></i>
                                        </span>
                                        <input type="number" id="placeDispo" name="placeDispo" placeholder="Nombre de places du vol" class="form-control" required="true" value="">
                                    </div>
                                </div>
                            </div>

                            <div class="form-group">
                                <div class="inputGroupContainer row justify-content-center">
                                    <button class="btn btn-success col-2">Enregistrer</button>
                                </div>
                            </div>
                        </fieldset>
                    </form>
                </td>

            </tr>
        </tbody>
    </table>
</div>

<!--</section>-->

<c:import url="${rootPage}admin/views/footer.jsp"></c:import>

<script src="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/js/bootstrap.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>