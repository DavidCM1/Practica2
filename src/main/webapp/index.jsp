<%@page import="com.emergentes.modelo.Tareas"%>
<%@page import="java.util.ArrayList"%>
<% 
    ArrayList<Tareas>lista=(ArrayList<Tareas>)session.getAttribute("listatar");
%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Lista de Tareas</title>
    </head>
    <body>
        <h1>LISTA DE TAREAS</h1>
        <a href="MainController?op=nuevo">Nuevo</a>
        <table border="1" cellspacing="0">
            <tr>
                <th>Id</th>
                <th>Tarea</th>
                <th>Prioridad</th>
                <th>Completado</th>
                <th></th>
                <th></th>
            </tr>
            <%
                if(lista !=null){
                    for(Tareas item:lista){
            %>
            <tr>
                <td><%= item.getId() %></td>
                <td><%= item.getTarea() %></td>
                <td><%= item.getPrioridad() %></td>
                <td><input type="checkbox" name="completado" value=""<%= item.getCompletado() %>></td>
                <td><a href="MainController?op=editar&id=<%= item.getId() %>">Editar</a></td>
                <td><a href="MainController?op=eliminar&id=<%= item.getId() %>" 
                       onclick="return confirm('Esta seguro de eliminar el registro');">Eliminar</a></td>
            </tr>
            <%
                }
            }
            %>
        </table>
    </body>
</html>
