<%@page import="com.emergentes.modelo.Libro"%>
<%
    Libro lib = (Libro)request.getAttribute("lib");
%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <style>
            body {
              background-color: #f1f1f1;
              font-family: Arial, sans-serif;
            }

            .container {
              width: 400px;
              margin: 0 auto;
              padding: 20px;
              background-color: #fff;
              border: 1px solid #ccc;
              border-radius: 5px;
              box-shadow: 0 0 5px rgba(0, 0, 0, 0.1);
            }

            h1 {
              text-align: center;
              color: #333;
              margin-bottom: 30px;
            }

            label {
              display: block;
              margin-bottom: 10px;
              margin-top: 10px;
              color: #333;
              font-weight: bold;
            }

            input[type="text"],
            input[type="hidden"]{
              width: 95%;
              padding: 10px;
              border: 1px solid #ccc;
              border-radius: 3px;
              font-size: 14px;
              
            }

            input[type="submit"] {
              width: 100%;
              padding: 10px;
              background-color: #4CAF50;
              color: #fff;
              border: none;
              border-radius: 3px;
              cursor: pointer;
              font-size: 16px;
              margin-top: 10px;
            }
        </style>
    </head>
    <body>
        <div class="container">
            <h1>Registro de Libros</h1>
            <form>
              <input type="hidden" name="id" value="${lib.id}" />

              <label for="isbn">ISBN:</label>
              <input type="text" name="isbn" value="${lib.isbn}" required>

              <label for="titulo">Título:</label>
              <input type="text" name="titulo" value="${lib.titulo}"  >

              <label for="categoria">Categoría:</label>
              <input type="text" name="categoria" value="${lib.categoria}" >
              <br>
              <input type="submit" value="Guardar">
            </form>
        </div>
        
    </body>
</html>
