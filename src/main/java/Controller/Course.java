/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package Controller;

import Model.CourseModel;
import Model.VideoModel;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author killua
 */
public class Course extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
        String proses = request.getParameter("proses");
        if(proses.equals("create")){
        String type = request.getParameter("type");
        String image = request.getParameter("image");
        CourseModel cm = new CourseModel();
        cm.CreateCourse(type, image);
        response.sendRedirect("backend/course/DataCourse.jsp");
        }
        else if (proses.equals("deletecourse")) {
            CourseModel cm = new CourseModel();
            String id = request.getParameter("id");
            cm.DeleteCourse(id);
            response.sendRedirect("backend/course/DataCourse.jsp");
        }
        else if (proses.equals("updatecourse")) {
            String id = request.getParameter("id");
            List<CourseModel> updatedata = new ArrayList<CourseModel>();
            CourseModel cm = new CourseModel();
            updatedata = cm.SearchCourse(id);
            HttpSession session = request.getSession(true);
            session.setAttribute("id_course", updatedata.get(0).getId());
            session.setAttribute("type_course", updatedata.get(0).getType());
            session.setAttribute("image_course", updatedata.get(0).getImage());
            response.sendRedirect("backend/course/EditCourse.jsp");
        }
        else if (proses.equals("updatecoursedata")) {
            String id_course = request.getParameter("id_course");
            String type = request.getParameter("type_course");
            String image = request.getParameter("image_course");
            CourseModel cm = new CourseModel();
            cm.UpdateCourse(type, image, id_course);
            response.sendRedirect("backend/course/DataCourse.jsp");
        }
        else{
            response.sendRedirect("auth/login.jsp");
        }
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
