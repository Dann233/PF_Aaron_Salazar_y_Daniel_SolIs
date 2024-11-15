<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.io.*, java.sql.*, javax.servlet.*, javax.servlet.http.*" %>
<% 
    String entrada_cedula = request.getParameter("cedula");
    String entrada_nombre1 = request.getParameter("nombre1");
    String entrada_nombre2 = request.getParameter("nombre2");
    String entrada_apellido1 = request.getParameter("apellido1");
    String entrada_apellido2 = request.getParameter("apellido2");

    String URL = "jdbc:mysql://localhost:3306/barberia_solissalazar?useUnicode=true&characterEncoding=utf8";
    String nombreUsuario = "root";
    String nombreClave = "Proverbios18.22";  

    Connection conn = null;
    CallableStatement stmt = null;
    String mensaje = ""; 

    try {
        Class.forName("com.mysql.cj.jdbc.Driver");
        conn = DriverManager.getConnection(URL, nombreUsuario, nombreClave);

        String SQL = "CALL insertar_clientes(?, ?, ?, ?, ?)";
        stmt = conn.prepareCall(SQL);
        stmt.setString(1, entrada_cedula);
        stmt.setString(2, entrada_nombre1);
        stmt.setString(3, entrada_nombre2);
        stmt.setString(4, entrada_apellido1);  
        stmt.setString(5, entrada_apellido2);

        int filaInsertada = stmt.executeUpdate();

        if (filaInsertada > 0) {
            mensaje = "El cliente se agregó correctamente.";
        } else {
            mensaje = "Hubo un error al agregar el cliente.";
        }
    } catch (SQLException e) {
        mensaje = "Error en la Base de Datos.";
        e.printStackTrace();
    } catch (ClassNotFoundException e) {
        mensaje = "No se encontró el conector a la Base de Datos.";
        e.printStackTrace();
    } finally {
        if (stmt != null) {
            try { 
                stmt.close(); 
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
        if (conn != null) {
            try { 
                conn.close(); 
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
    }

    request.setAttribute("mensaje", mensaje);
    response.sendRedirect("../Vista/mis_clientes.jsp");
%>
