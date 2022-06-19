/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package com.servlet.controlador;

import com.mysql.model.Alumno;
import com.servlet.DB.ConexionDB;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author lalop
 */
@WebServlet(name = "NewServlet", urlPatterns = {"/NewServlet"})
public class NewServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            String op;
            op=(request.getParameter("op") != null) ? request.getParameter("op") : "list";
            ArrayList<Alumno> lista = new ArrayList<Alumno>();
            ConexionDB canal=new ConexionDB();
            Connection conn = canal.conectar();
            
            PreparedStatement ps;
            ResultSet rs;
            
            if(op.equals("list")){
                try{
                    String sql = "select * from datos";
                    ps = (conn.prepareStatement(sql));
                    rs=ps.executeQuery();
                    while(rs.next()){
                        Alumno alm = new Alumno();
                        alm.setId(rs.getInt("id"));
                        alm.setCorreo(rs.getString("user"));
                        alm.setPass(rs.getString("pass"));
                        
                        lista.add(alm);
                    }
                    request.setAttribute("lista",lista);
                    request.getRequestDispatcher("index.html").forward(request,response);
                }catch(SQLException ex){
                    System.out.println("Error en SQL"+ex.getMessage());
                }finally{
                    canal.desconectar();
                }
            }
            if(op.equals("nuevo")){
                Alumno l = new Alumno();
                request.setAttribute("Alumno",1);
                request.getRequestDispatcher("editar.jsp").forward(request, response);
            }
            if(op.equals("eliminar")){
                
            }
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(NewServlet.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold
}