/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.mysql.model;

/**
 *
 * @author lalop
 */
public class Alumno {
    private int id;
    private String Correo;
    private String Pass;

    public Alumno(int id, String Correo, String Pass) {
        this.id = 0;
        this.Correo = Correo;
        this.Pass = Pass;
    } 

    public Alumno() {
    }

    /**
     * @return the id
     */
    public int getId() {
        return id;
    }

    /**
     * @param id the id to set
     */
    public void setId(int id) {
        this.id = id;
    }

    /**
     * @return the Correo
     */
    public String getCorreo() {
        return Correo;
    }

    /**
     * @param Correo the Correo to set
     */
    public void setCorreo(String Correo) {
        this.Correo = Correo;
    }

    /**
     * @return the Pass
     */
    public String getPass() {
        return Pass;
    }

    /**
     * @param Pass the Pass to set
     */
    public void setPass(String Pass) {
        this.Pass = Pass;
    }

    @Override
    public String toString() {
        return "Alumno{" + "id=" + id + ", Correo=" + Correo + ", Pass=" + Pass + '}';
    }
    
}
