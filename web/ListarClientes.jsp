<%-- 
    Document   : ListarClientes
    Created on : 13/10/2021, 17:40:53
    Author     : Cortinez Juan José
--%>

<%@page import="modelo.Cliente"%>
<%@page import="java.util.List"%>
<%@page import="controlador.GestorCliente"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Lista de Clientes</title>
    </head>
    <body>
        <table border="1">
        <%
            GestorCliente gestor = new GestorCliente();
            
            List<Cliente> clientes = gestor.listar();
            if(clientes.isEmpty()){
                out.println("No hay clientes para mostrar");
            }else{
                out.println("<tr>");
                out.println("<td>DNI</td>");
                out.println("<td>NOMBRE</td>");
                out.println("<td>DOMICILIO</td>");
                                   
                    for (Cliente aux : clientes) {
                        out.println("<tr>");
                        out.println("<td>"+aux.getDni()+"</td>");
                        out.println("<td>"+aux.getNombre()+"</td>");
                        out.println("<td>"+aux.getDomicilio()+"</td>");
                            
                        }
                
                }
                
            
        %> 
        </table>
    </body>
</html>
