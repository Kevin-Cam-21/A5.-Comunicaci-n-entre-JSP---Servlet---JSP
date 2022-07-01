<%-- 
    Document   : ObjetoJSP
    Created on : 10/06/2022, 05:55:07 PM
    Author     : Yonathan Uriel Pastrana Tepectzin y Kevin Ulises Garcia Camacho
--%>
<%@page import="servlets.SProcesar"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <!-- Bootstrap CSS -->
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
        <link rel="stylesheet" href="css/estilos.css">
        <title>Alumnos JSP y Servlet</title>
    </head>
    <body>
       <div class='form-register'>
            <form action='SProcesar' method='post' id='formulario'>
                <div class='form-group'>
                    <label for='lblMatricula'>MATRICULA</label>
                    <input type='text' class='controls' name='tfMatricula' placeholder="Ingrese la matricula" required> 
                </div>
                <div class='form-group'>
                    <label for='lblNombre'>NOMBRE</label>
                    <input type='text' class='controls' name='tfNombre' placeholder="Ingrese el nombre" required>
                </div>
                <div class='form-group'>
                    <label for='lblApellidoPaterno'>APELLIDO PATERNO</label>
                    <input type='text' class='controls' name='tfApellidoPaterno' placeholder="Ingrese el apellido paterno" required>
                </div>
                <div class='form-group'>
                    <label for='lblApellidoMaterno'>APELLIDO MATERNO</label>
                    <input type='text' class='controls' name='tfApellidoMaterno' placeholder="Ingrese el apellido materno" required> 
                </div>
                <div class='form-group'>
                    <label for='lblDdi'>DDI</label>
                    <input type='number' class='controls' name='tfDdi'placeholder="Ingrese la calificación de DDI" required> 
                </div>
                <div class='form-group'>
                    <label for='lblDwi'>DWI</label>
                    <input type='number' class='controls' name='tfDwi' placeholder="Ingrese la calificación de DWI" required>
                </div>
                <div class='form-group'>
                    <label for='lblEcbd'>ECBD</label>
                    <input type='number' class='controls' name='tfEcbd' placeholder="Ingrese la calificación de ECBD" required>
                </div>
                <button type='submit' class='botons' name='btnRegistrar'>Registrar</button>
                <input type='reset' class='botons' name='btnLimpiar' value='Limpiar'></input>
            </form> 
        </div>     
    </body>
</html>
