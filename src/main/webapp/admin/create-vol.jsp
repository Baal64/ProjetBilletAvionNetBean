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
        <li class="breadcrumb-item active" aria-current="page"><a href="${rootPage}/admin/vols">Liste</a></li>
        <li class="breadcrumb-item active" aria-current="page"><a href="${rootPage}/admin/vol">Enregistrement</a></li>
    </ol>
</nav>
<!--<section class="container">
    <div class="row margin_bottom_16">       
        <form method="post" action="<" class="form-group">-->
<!--            <div class=""form-group>
                <label for="numeroVol" class="col-md-4 control-label">Numero de vol :</label>
                <div class="col-md-8 inputGroupContainer">
                    <input type="text" id="numeroVol" name="numeroVol" class="form-control">
                </div>
            </div>-->
            
<!--            <label for="dateDepart" class="mr-sm-2">Date de départ</label>
            <input type="datetime-local" id="dateDepart" name="dateDepart" value = "2019-01-01T00:00:00" class="form-control mr-sm-2" >
            
            <label for="dateArrivee" class="mr-sm-2">Date d'arrivée</label>
            <input type="datetime-local" id="dateArrivee" name="dateArrivee" value = "2019-01-01T00:00:00" class="form-control mr-sm-2">-->
            
<!--            <label for="villeDeaprt" class="mr-sm-2">Ville de départ</label>
            <input type="text" id="villeDepart" name="villeDepart" class="form-control mr-sm-2">
            
            <label for="villeArrivee" class="mr-sm-2">Ville d'arrivée</label>
            <input type="text" id="VilleArrivee" name="villeArrivee" class="form-control mr-sm-2">-->
            
<!--            <label for="placeDispo" class="mr-sm-2">Nombre de places disponobles</label>
            <input type="text" id="placeDispo" name="placeDispo" class="form-control mr-sm-2">-->
            
<!--            <button class="btn btn-outline-success my-2 my-sm-0">Submit</button>-->
<!--        </form>
    </div>-->
    
    <div class="container">
       <table class="table table-striped">
          <tbody>
             <tr>
                <td colspan="1">
                   <form method="post" action="${routeVol}" class="well form-horizontal">
                      <fieldset>
                         <div class="form-group">
                            <label class="col-md-4 control-label">Numero de vol</label>
                            <div class="col-md-8 inputGroupContainer">
                               <div class="input-group">
                                   <span class="input-group-addon">
                                       <i class="glyphicon glyphicon-plane"></i>
                                   </span>
                                   <input name="numeroVol" placeholder="Numero de vol" class="form-control" required="true" value="" type="text" id="numeroVol">
                               </div>
                            </div>
                         </div>
                          
                         <div class="form-group">
                            <label class="col-md-4 control-label">Date de départ</label>
                            <div class="col-md-8 inputGroupContainer">
                               <div class="input-group">
                                   <span class="input-group-addon">
                                       <i class="glyphicon glyphicon-calendar"></i>
                                   </span>
                                   <input id="dateDepart" class="form-control" required="true" name="dateDepart" value = "2019-01-01T00:00:00" type="datetime-local">
                               </div>
                            </div>
                         </div>
                          
                         <div class="form-group">
                            <label class="col-md-4 control-label">Date d'arrivée</label>
                            <div class="col-md-8 inputGroupContainer">
                               <div class="input-group">
                                   <span class="input-group-addon">
                                       <i class="glyphicon glyphicon-calendar"></i>
                                   </span>
                                   <input id="dateArrivee" name="dateArrivee" class="form-control" required="true" value = "2019-01-01T00:00:00" type="datetime-local">
                               </div>
                            </div>
                         </div>
                          
                         <div class="form-group">
                            <label class="col-md-4 control-label">Ville de départ</label>
                            <div class="col-md-8 inputGroupContainer">
                               <div class="input-group">
                                   <span class="input-group-addon">
                                       <i class="glyphicon glyphicon-export"></i>
                                   </span>
                                   <input id="villeDepart" name="villeDepart" placeholder="Ville de départ" class="form-control" required="true" value="" type="text">
                               </div>
                            </div>
                         </div>
                          
                         <div class="form-group">
                            <label class="col-md-4 control-label">Ville d'arrivée</label>
                            <div class="col-md-8 inputGroupContainer">
                               <div class="input-group">
                                   <span class="input-group-addon">
                                       <i class="glyphicon glyphicon-import"></i>
                                   </span>
                                   <input id="villeArrivee" name="villeArrivee" placeholder="ville d'arrivée" class="form-control" required="true" value="" type="text">
                               </div>
                            </div>
                         </div>
                          
                         <div class="form-group">
                            <label class="col-md-4 control-label">Nombre de places disponibles</label>
                            <div class="col-md-8 inputGroupContainer">
                               <div class="input-group">
                                   <span class="input-group-addon">
                                       <i class="glyphicon glyphicon-user"></i>
                                   </span>
                                   <input type="text" id="placeDispo" name="placeDispo" placeholder="Nombre de places du vol" class="form-control" required="true" value="">
                               </div>
                            </div>
                         </div>

                         <div class="form-group">
                            <div class="inputGroupContainer">
                                <button class="btn btn-outline-warning btn-success center-block">Enregistrer</button>
                            </div>
                         </div>
                      </fieldset>
                   </form>
                </td>
                
             </tr>
          </tbody>
       </table>
    </div>
                  
    <ul>
        <c:forEach items="${listeVols}" var="vol">
            <li>${vol.numeroVol}</li>
            <li>${vol.nombrePlacesDisponibles}</li>
            <li>${vol.dateDepart}</li>
            <li>${vol.dateArrivee}</li>
            <li>${vol.villeDepart}</li>
            <li>${vol.villeArrivee}</li>

        </c:forEach>
    </ul>

<!--</section>-->

<c:import url="${rootPage}admin/views/footer.jsp"></c:import>

<script src="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/js/bootstrap.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>