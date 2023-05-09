<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page import="java.util.List"%>
<%@page import="com.emergentes.modelo.Libro"%>
<%
    List<Libro> lista =(List<Libro>) request.getAttribute("lista");
%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <style>
            .styled-table { border-collapse: collapse; margin: 25px 0; 
                           font-size: 1em; font-family: 
                           sans-serif; min-width: 450px; 
                           box-shadow: 0 0 20px rgba(0, 0, 0, 0.15); }
            .styled-table thead tr { background-color: #980081; 
                                    color: #ffffff; 
                                    text-align: middle; 
            }
            .styled-table th, .styled-table td { padding: 12px 15px; }
            
            .styled-table tbody tr { border-bottom: 1px solid #dddddd; } 
            .styled-table tbody tr:nth-of-type(even) { background-color: #f3f3f3; } 
            .styled-table tbody tr:last-of-type { border-bottom: 2px solid #009879; }
            
            .btn-link {
                background-color: #199319;
                color: white;
            }
            
            .btn-link {
                background-color: #199319;
                color: white;
                padding: 15px 25px;
              }
              .btn-link {
                background-color: #199319;
                color: white;
                padding: 15px 25px;
                text-decoration: none;
              }
              .btn-link:hover {
                background-color: #223094;
              }
        </style>
    </head>
    <body>
        <h1>Listado de Libros</h1>
        <a href ="MainController?op=nuevo" class="btn-link">Nuevo </a> 
        <table border="1" class ="styled-table">
            <thead>
                <tr>

                    <th>Id</th>
                    <th>Isbn</th>
                    <th>Titulo</th>
                    <th>Categoria</th>
                    <th>Editar</th>
                    <th>Eliminar</th>

                </tr>
            </thead>
            <c:forEach var = "item" items="${lista}">
            <tbody>
                <tr>
                    <td>${item.id}</td>
                    <td>${item.isbn}</td>
                    <td>${item.titulo}</td>
                    <td>${item.categoria}</td>
                    <td><a href="MainController?op=editar&id=${item.id}" >Editar</a></td>
                    <td><a href="MainController?op=eliminar&id=${item.id}" onclick="return(confirm('Esta seguro?'))">Eliminar</a></td>

                </tr>
            </tbody>
            </c:forEach>
                 
        </table>
    </body>
</html>
