package com.servlet.DB;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */

/**
 *
 * @author lalop
 */
public class ConexionDB {
    static String driver="com.mysql.jdbc.Driver";
    static String url="jdbc:mysql://localhost:3307/?user=root";
    static String user="root";
    static String pass="1234";
    protected Connection conn =null;

    public ConexionDB() throws ClassNotFoundException {
        try{
            Class.forName(driver);
            conn = DriverManager.getConnection(url,user,pass);
            if(conn!=null){
                System.out.println("Conexión ok + conn");
            }
        }catch(SQLException ex){
            System.out.println("Error de SQL"+ex.getMessage());
        }catch(ClassNotFoundException ex){
            System.out.println("Falta Driver"+ex.getMessage());
        }
    }
    
    public Connection conectar(){
        return conn;
    }
    public void desconectar(){
        try {
            System.out.println("Cerrando la BD"+conn);
            conn.close();
        } catch (SQLException ex) {
            System.out.println("Error de SQL"+ex.getMessage());
        }
    }
}
