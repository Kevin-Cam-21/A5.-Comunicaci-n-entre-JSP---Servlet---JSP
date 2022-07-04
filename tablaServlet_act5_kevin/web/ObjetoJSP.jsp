<%-- 
    Document   : ObjetoJSP
    Created on : 10/06/2022, 05:55:07 PM
    Author     : Yonathan Uriel Pastrana Tepectzin y Kevin Ulises Garcia Camacho
--%>
<%@page import="servlets.SProcesar"%>
<%@page import="datos.Dato"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<% 
    Dato alumnos[] = new Dato[10];
%>
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
            </form> 
        </div> 
        
       <%
            if(request.getAttribute("cont") != null)
            {
            alumnos = (Dato[])request.getAttribute("alumnos");
            int cont = Integer.parseInt(request.getAttribute("cont").toString());
            
                
        
            out.println("" + "<link rel='stylesheet' href='https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css' integrity='sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm' crossorigin='anonymous'>");
            out.println(""
                        + "<table class='table table-striped table-dark'>"
                        + " <thead>"
                        + "  <tr>"
                        + "     <th scope='col'>MATRICULA</th>"
                        + "     <th scope='col'>ALUMNO</th>"
                        + "     <th scope='col'>DDI</th>"
                        + "     <th scope='col'>DWI</th>"
                        + "     <th scope='col'>ECBD</th>"
                        + "     <th scope='col'>PROM</th>"
                        + "  </tr>"
                        + " </thead>"
            );
            for(int i = 0; i < cont; i++)
            {
                    out.println(""
                            + "<tbody>"
                            +   "<tr>"
                            +       "<td>" + alumnos[i].getMatricula() + "</td>"
                            +       "<td>" + alumnos[i].getNombre() + " " + alumnos[i].getApellidoPaterno() + " " + alumnos[i].getApellidoMaterno() + "</td>"
                            +       "<td>" + alumnos[i].getDdi() + "</td>"
                            +       "<td>" + alumnos[i].getDwi() + "</td>"
                            +       "<td>" + alumnos[i].getEcbd() + "</td>"
                            +       "<td>" + alumnos[i].calcularPromedio(alumnos[i].getDdi(), alumnos[i].getDwi(), alumnos[i].getEcbd()) + "</td>"
                            +   "</tr>"
                            + "</tbody>"
                    );
            }
            out.println("" + "</table>");
       }
       %>
       
    </body>
</html>
