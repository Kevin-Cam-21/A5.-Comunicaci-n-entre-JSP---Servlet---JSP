<%-- 
    Document   : ObjetoJSP
    Created on : 10/06/2022, 05:55:07 PM
    Author     : Yonathan Uriel Pastrana Tepectzin y Kevin Ulises Garcia Camacho
--%>

<%@page import="datos.Dato"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%!
    Dato alumnos [] = new Dato[10];
    int cont = 0;
%>

<%
    /*
    alumno[0] = new Dato("57211000101", "Victor Manuel", "Bautista", "Nievez", 7, 8, 10);
    alumno[1] = new Dato("57211000102", "Yonathan Uriel", "Pastrana", "Tepectzin", 10, 9, 10);
    alumno[2] = new Dato("57211000103", "Daniel", "Chino", "Bello", 10, 7, 7);
    alumno[3] = new Dato("57211000104", "Yosef Cecil", "Flores", "Martinez", 7, 8, 10);
    alumno[4] = new Dato("57211000105", "Kevin Ulises", "Garcia", "Camacho", 9, 9, 10);
    alumno[5] = new Dato("57211000106", "Veronica", "Marin", "Jorge", 10, 8, 8);
    alumno[6] = new Dato("57211000107", "Amado", "Perez", "Cochine", 10, 9, 9);
    alumno[7] = new Dato("57211000108", "Roberto Leonel", "Salgado", "De la Sancha", 10, 9, 7);
    alumno[8] = new Dato("57211000109", "Luis Gustavo", "Tacuba", "Bonifacio", 9, 7, 8);
    alumno[9] = new Dato("57211000110", "Susano Eduardo", "Moras", "Gatica", 10, 10, 9);
    */
    /*alumnos[0] = new Dato();
    alumnos[1] = new Dato();
    alumnos[2] = new Dato();
    alumnos[3] = new Dato();
    alumnos[4] = new Dato();
    alumnos[5] = new Dato();
    alumnos[6] = new Dato();
    alumnos[7] = new Dato();
    alumnos[8] = new Dato();
    alumnos[9] = new Dato();*/
%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <!-- Bootstrap CSS -->
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
        <link rel="stylesheet" href="css/estilos.css">
        <title>JSP Page</title>
    </head>
    <body>
       <div class='form-register'>
            <form action='ObjetoJSP.jsp' method='post' id='formulario'>
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
            
            if(request.getParameter("btnRegistrar") != null)
            {
                alumnos[cont] = new Dato();
                
                alumnos[cont].setMatricula(request.getParameter("tfMatricula"));
                alumnos[cont].setNombre(request.getParameter("tfNombre"));
                alumnos[cont].setApellidoPaterno(request.getParameter("tfApellidoPaterno"));
                alumnos[cont].setApellidoMaterno(request.getParameter("tfApellidoMaterno"));
                alumnos[cont].setDdi(Double.parseDouble(request.getParameter("tfDdi")));
                alumnos[cont].setDwi(Double.parseDouble(request.getParameter("tfDwi")));
                alumnos[cont].setEcbd(Double.parseDouble(request.getParameter("tfEcbd")));
                
                cont++;
                
                
            }
            
            if(request.getParameter("btnRegistrar") != null)
            {
                out.println(""
                        + "<table class='table' border='2'>"
                        + " <thead class='thead-dark text-center'>"
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
                            + "<tbody class='bg-white'>"
                            +   "<tr>"
                            +       "<td class= 'text-center'>" + alumnos[i].getMatricula() + "</td>"
                            +       "<td>"+ alumnos[i].getNombre() + " " + alumnos[i].getApellidoPaterno() + " " + alumnos[i].getApellidoMaterno() + "</td>"
                            +       "<td class= 'text-center'>" + alumnos[i].getDdi() + "</td>"
                            +       "<td class= 'text-center'>" + alumnos[i].getDwi() + "</td>"
                            +       "<td class= 'text-center'>" + alumnos[i].getEcbd() + "</td>"
                            +       "<td class= 'text-center'>" + alumnos[i].calcularPromedio(alumnos[i].getDdi(), alumnos[i].getDwi(), alumnos[i].getEcbd()) + "</td>"
                            +   "</tr>"
                            + "</tbody>"
                        );
                }
                out.println(""
                    + "</table>"
                );
            }
            
            

            
        %>
      <!--  <br>
        <br>
        <table class="table" border="3">
          <thead class="thead-dark text-center">
            <tr>
                <th scope="col">MATRICULA</th>
                <th scope="col">ALUMNO</th>
                <th scope="col">DDI</th>
                <th scope="col">DWI</th>
                <th scope="col">ECBD</th>
                <th scope="col">PROM</th>
            </tr>
          </thead>-->
        <%
            //Ciclo for para imprimir los 10 registros
            /*for(int i = 0; i < alumnos.length; i++)
            {
                out.println(""
                + "<tbody>"
                +   "<tr>"
                +       "<td class= 'text-center'>" + alumnos[i].getMatricula() + "</td>"
                +       "<td>"+ alumnos[i].getNombre() + " " + alumnos[i].getApellidoPaterno() + " " + alumnos[i].getApellidoMaterno() + "</td>"
                +       "<td class= 'text-center'>" + alumnos[i].getDdi() + "</td>"
                +       "<td class= 'text-center'>" + alumnos[i].getDwi() + "</td>"
                +       "<td class= 'text-center'>" + alumnos[i].getEcbd() + "</td>"
                +       "<td class= 'text-center'>" + alumnos[i].calcularPromedio(alumnos[i].getDdi(), alumnos[i].getDwi(), alumnos[i].getEcbd()) + "</td>"
                +   "</tr>"
                + "</tbody>"
                );
            }*/
            
            /*
            if(request.getParameter("btnRegistrar") != null)
            {
                out.println(""
                + "<tbody>"
                +   "<tr>"
                +       "<td class= 'text-center'>" + alumnos[cont].getMatricula() + "</td>"
                +       "<td>"+ alumnos[cont].getNombre() + " " + alumnos[cont].getApellidoPaterno() + " " + alumnos[cont].getApellidoMaterno() + "</td>"
                +       "<td class= 'text-center'>" + alumnos[cont].getDdi() + "</td>"
                +       "<td class= 'text-center'>" + alumnos[cont].getDwi() + "</td>"
                +       "<td class= 'text-center'>" + alumnos[cont].getEcbd() + "</td>"
                +       "<td class= 'text-center'>" + alumnos[cont].calcularPromedio(alumnos[cont].getDdi(), alumnos[cont].getDwi(), alumnos[cont].getEcbd()) + "</td>"
                +   "</tr>"
                + "</tbody>"
                );
            }*/
        %>
      <!--  </table> -->
    </body>
</html>
