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


public class Contact implements Serializable {
    
    
    private long customerID;
    private String email;
    private String text;
    
    public Contact(){
    }

    public long getCustomerID() {
        return customerID;
    }
    
    public String getEmail() {
        return email;
    }

    public String getText() {
        return text;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public void setText(String text) {
        this.text = text;
    }
    
    public void setCustomerID (long customerID) {
        this.customerID = customerID;
    }
    
}
