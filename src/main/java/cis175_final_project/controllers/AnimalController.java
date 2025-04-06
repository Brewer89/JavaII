/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package cis175_final_project.controllers;

import com.mycompany.cis175_final_project.Animal;
import com.mycompany.cis175_final_project.resources.ConnectionPool;
import com.mycompany.cis175_final_project.resources.DBUtil;
import jakarta.servlet.annotation.WebServlet;


/**
 *
 * @author ijc19
 */
    

import java.io.IOException;
import java.sql.Connection;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import java.util.ArrayList;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class AnimalController extends HttpServlet {

    @Override
    public void doGet(HttpServletRequest request,//FIX
            HttpServletResponse response)
            throws ServletException, IOException {
        String action = request.getParameter("action");
        String url = "";
        switch (action) {
            case "checkout":
                url = "/checkout.jsp";
                break;
            case "manage": 
                url = manage(request, response);
                break;
        }

        getServletContext().getRequestDispatcher(url)
                .forward(request, response);
    }

    @Override
    public void doPost(HttpServletRequest request,//FIX
            HttpServletResponse response)
            throws ServletException, IOException {
        String action = request.getParameter("action");
        String url = "";
        switch (action) {
            case "doCheckout":
                //url = doCheckout(request, response);
                break;
            case "doCheckin":
                //url = doCheckin(request, response);
                break;
        }
        
        getServletContext().getRequestDispatcher(url)
                .forward(request, response);
    }
    
    private String manage(HttpServletRequest request,
            HttpServletResponse response) {
        
        ConnectionPool pool = ConnectionPool.getInstance();
        Connection connection = pool.getConnection();
        if (connection == null) {
            System.out.println("fail");
        }
        PreparedStatement ps = null;
        ResultSet rs = null;
        ArrayList<Animal> allAnimals = new ArrayList<>();
        
        String query = "SELECT * FROM animal ";
        try{
            ps = connection.prepareStatement(query);
            rs = ps.executeQuery();
            
            while (rs.next()) {
                Animal a= new Animal();
                a.setAnimalID(rs.getLong("animalID"));
                a.setType(rs.getString("type"));
                //a.setColor(rs.getString("color"));
                a.setWeight(rs.getFloat("weight"));
                allAnimals.add(a);
            }
        }
        catch(SQLException e){
            
        } finally {
            DBUtil.closeResultSet(rs);
            DBUtil.closePreparedStatement(ps);
            pool.freeConnection(connection);
        }
        request.setAttribute("allAnimals", allAnimals);
        System.out.println(allAnimals.size());
        return "/results.jsp";
    }   
       
    
    
    
}
    

