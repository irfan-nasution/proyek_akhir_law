/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package services;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.HashMap;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import org.apache.commons.codec.digest.DigestUtils;

/**
 *
 * @author irfan92
 */
@WebServlet(name = "SessionManager", urlPatterns = {"/SessionManager"})
public class SessionManager extends HttpServlet {
    
    private Connection connection;
    private Statement stmt;
    private ResultSet resultSet;
    
    @Override
    public void init(){
        try {
            Class.forName("com.mysql.jdbc.Driver");
            connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/makan-apa","root","bima1992");
            stmt = connection.createStatement();
        } catch (SQLException ex) {
            Logger.getLogger(SessionManager.class.getName()).log(Level.SEVERE, null, ex);
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(SessionManager.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
    /** 
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code> methods.
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        try {
        } finally {            
            out.close();
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /** 
     * Handles the HTTP <code>GET</code> method.
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String action = request.getParameter("action");
        HttpSession session = request.getSession(true);
        PrintWriter out = response.getWriter();
        
        if(action.equalsIgnoreCase("logout")){
            if(session.isNew() || session.getAttribute("hasLoggedIn") == null){
                session.setAttribute("message", new String[]{"3", "You've not logged in yet. "});
            }else{
                session.removeAttribute("hasLoggedIn");
                session.removeAttribute("sessionData");
                session.setAttribute("message", new String[]{"0", "You have successfully logged out."});
            }
            response.sendRedirect("index.jsp");
        }else if(action.equalsIgnoreCase("login")){            
            try {
                String uname = request.getParameter("username");
                String pass = DigestUtils.md5Hex(request.getParameter("password"));            
                resultSet = stmt.executeQuery("SELECT ID, Name, Username, Address, Email, Phone_Number, PhotoURL, Is_Seller, Description FROM user WHERE Username='"+uname+"' AND Password='"+pass+"'");
                resultSet.last();
                boolean found = resultSet.getRow()>0;
                if(found){
                    resultSet.first();
                    int ID = resultSet.getInt("ID");
                    String Username = resultSet.getString("Username");
                    String Name = resultSet.getString("Name");
                    String Address = resultSet.getString("Address");
                    String Email = resultSet.getString("Email");
                    String Phone_Number = resultSet.getString("Phone_Number");
                    String PhotoURL = resultSet.getString("PhotoURL");
                    String Is_Seller = resultSet.getString("Is_Seller");
                    String Description = resultSet.getString("Description");
                    
                    session.setAttribute("message", new String[]{"0", "Welcome aboard, "+Name});                    
                    session.setAttribute("hasLoggedIn", true);
                    
                    HashMap<String, String> sessionData = new HashMap();
                    sessionData.put("Username", Username);
                    sessionData.put("Name", Name);
                    sessionData.put("Address", Address);
                    sessionData.put("Email", Email);
                    sessionData.put("Phone_Number", Phone_Number);
                    sessionData.put("PhotoURL", PhotoURL);
                    sessionData.put("Is_Seller", Is_Seller);
                    sessionData.put("Description", Description);
                    sessionData.put("ID", String.valueOf(ID));
                    
                    session.setAttribute("sessionData", sessionData);
                    //out.print(ID+Username+Address+Email+Phone_Number+PhotoURL+Is_Seller+Description);
                }else{
                    //out.print("Invalid login data");
                    session.setAttribute("message", new String[]{"3", "Invalid Login Data"}); 
                }
                response.sendRedirect("index.jsp");
            }
            catch (SQLException ex) {
                out.print(ex);
            }
        }
        //response.getWriter().print("aaa");
    }

    /** 
     * Handles the HTTP <code>POST</code> method.
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /** 
     * Returns a short description of the servlet.
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>
}
