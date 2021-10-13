<%-- 
    Document   : index
    Created on : 13/10/2021, 00:01:55
    Author     : Cortinez Juan José
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Carga de Clientes</title>
    </head>
    <body>
        <form action="CargaFormulario.jsp"> 
            Ingrese el DNI : <input type="text" name="dni" id="dni" />
            Ingrese el nombre : <input type="text" name="nombre" id="nombre" />
            Ingrese el domicilio : <input type="text" name="domicilio" id="domicilio" />
            <button type="submit">ENVIAR</button><br>
       </form>
        <form action="ListarClientes.jsp"> 
            <br><br>
            <button type="submit">LISTAR CLIENTES</button>
        </form>    
    </body>
</html>
