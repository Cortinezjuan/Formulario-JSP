<%-- 
    Document   : CargaFormulario
    Created on : 13/10/2021, 17:24:01
    Author     : Cortinez Juan José
--%>

<%@page import="modelo.Cliente"%>
<%@page import="controlador.GestorCliente"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            if(request.getParameter("dni") != null && request.getParameter("nombre") != null && request.getParameter("domicilio") != null){
                try {
                        GestorCliente gestor = new GestorCliente();
                        Cliente nuevoCliente = new Cliente();
                        nuevoCliente.setNombre(request.getParameter("nombre"));
                        nuevoCliente.setDomicilio(request.getParameter("domicilio"));
                        nuevoCliente.setDni(Integer.parseInt(request.getParameter("dni")));
                
                        gestor.guardar(nuevoCliente);
                    } catch (Exception e) {
                        e.printStackTrace();
                    }
                
                
                
            }  
         %>
         <h1>Cliente guardado</h1>
    </body>
</html>
