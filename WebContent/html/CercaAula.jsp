<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css" href="../css/cercaAula.css">
        <link rel="stylesheet" href="http://ajax.googleapis.com/ajax/libs/jqueryui/1.11.0/themes/smoothness/jquery-ui.css">
        <link rel="stylesheet" type="text/css" href="../css/font-awesome.min.css">
        <link rel="stylesheet" type="text/css" href="../css/bootstrap.css">
        <script type="text/javascript" src="../js/jquery.js"></script>
        <title>Cerca aula</title>
    </head>
    <body class="poluzzi">
        <div class="container">
            <div class="navigation">
                <ul class="nav nav-tabs">
                    <li>
                        <a href="index.html"><i class="fa fa-home"></i></a>
                    </li>
                    <p>Cerca Aula</p>
                </ul>
            </div>
            <div class="form-cerca-aula">
                    <div class="row select1">
                        <div class="col-md-5 selectOra">
                            <h4>Istituto:</h4>    
                        </div>
                        <div class="col-md-4 radioInput">
                            <form action="" id="formScuola">
                                <div class="btn-group" data-toggle="buttons">
                                    <label class="btn btn-default">
                                        <input type="radio" id="radioBelluzzi" name="radioBelluzzi" value="Belluzzi" onclick="prima()" /> Belluzzi
                                    </label> 
                                    <label class="btn btn-default">
                                        <input type="radio" id="radioFioravanti" name="radioFioravanti" value="Fioravanti" onclick="prima()" /> Fioravanti
                                    </label> 
                                </div>
                            </form>
                        </div>
                    </div>
                <div class="row select1" style="visibility:hidden" id="selectBlocco">
                    <form action="">
                        <div class="col-md-5 selectOra">
                            <h4>Blocco:</h4>    
                        </div>
                        <div class="col-md-4 radioInput">
                            <div class="btn-group" data-toggle="buttons">
                                <label class="btn btn-default">
                                    <input type="radio" id="radioA" name="radioA" value="1" onclick="seconda()" /> A
                                </label> 
                                <label class="btn btn-default">
                                    <input type="radio" id="radioB" name="radioB" value="2" onclick="seconda()" /> B1
                                </label> 
                                <label class="btn btn-default">
                                    <input type="radio" id="radioB" name="radioB" value="2" onclick="seconda()"/> B2
                                </label> 
                                <label class="btn btn-default">
                                    <input type="radio" id="radioC" name="radioC" value="3" onclick="seconda()"/> C
                                </label>
                            </div>
                        </div>
                    </form>
                </div>
                <div class="row select1" style="visibility:hidden" id="selectAula">
                    <div class="col-md-5 selectOra"> 
                        <h4>Aula:</h4>       
                    </div>
                    <div class="col-md-2 ">
                        <form id="selectForm" method="POST" action="">
                            <select class="form-control" id="staffSelect" name="dipendenti" onchange="">
                                <option class="idoption1" value="1">Turro</option>
                                <option class="idoption1" value="2">Minelli</option>
                                <option class="idoption1" value="3">Poluzzi</option>
                            </select>
                        </form>
                    </div> 
                </div>
            </div>
        	 
            <!--<div class="messaggioDiv">
            	<input width="620" height="440" type="text" readonly value="Prova testo">
            </div>-->
            <div class="row rowcentrale">
                <div class="col-md-6">
                    <div class="descrizione">
                        
                    </div>
                </div>
                <div class="col-sm-6">
                    <video width="600" height="500" autoplay loop muted>
                        <source src="../video/Prova.mp4" type="video/mp4" />
                        Your browser does not support the video tag.
                    </video>
                </div>
            </div>
            <div class="row rowloghi">
                <div class="col-md-4">
                    <img id="logo2" src="../img/Logo.jpg" alt="">
                </div>
                <div class="col-md-4">
                    <img id="logo3" src="../img/Logo ITIS 2.png" alt="">
                </div>
                <div class="col-md-4">
                    <img id="logo4" src="../img/ComunediBologna_Emblema_COL.png" alt="">
                </div>
            </div>
            <div class="row">
                <div class="copyright">
                    <small>&copy; Copyright 2016, Giovanni Minelli & Lorenzo Poluzzi/Turrini (L^2PT)</small>
                </div>
            </div>
        </div>
        <script type="text/javascript">
            function prima(){
                document.getElementById('selectBlocco').style.visibility ='visible';
            }
            function seconda(){
                document.getElementById('selectAula').style.visibility ='visible';
            }
            jQuery(document).ready(function() {
                $("#formScuola input[type='radio']").on('click', function(event) {
                    $("#formScuola input[type='radio']").closest('label').removeClass('active');
                    //event.preventDefault();
                    /* Act on the event */
                    $(this).closest("label").addClass('active');
                });
            });
        </script>
    </body>
</html>