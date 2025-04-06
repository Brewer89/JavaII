/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.mycompany.cis175_final_project;

import java.io.Serializable;


/**
 *
 * @author ijc19
 */

public class Animal implements Serializable {

    private long animalID;
    private String type;
    private String color;
    private float weight;
    
    public Animal() {
        type = "";
        color = "";
        weight = 0;
    }
    /**
     * @return the animalID
     */
    public long getAnimalID() {
        return animalID;
    }

    /**
     * @param animalID the animalID to set
     */
    public void setAnimalID(long animalID) {
        this.animalID = animalID;
    }

    /**
     * @return the type
     */
    public String getType() {
        return type;
    }

    /**
     * @param type the type to set
     */
    public void setType(String type) {
        this.type = type;
    }

    /**
     * @return the color
     */
    public String getColor() {
        return color;
    }

    /**
     * @param color the color to set
     */
    public void setColor(String color) {
        this.color = color;
    }

    /**
     * @return the weight
     */
    public float getWeight() {
        return weight;
    }

    /**
     * @param weight the weight to set
     */
    public void setWeight(float weight) {
        this.weight = weight;
    }
    
    
}
