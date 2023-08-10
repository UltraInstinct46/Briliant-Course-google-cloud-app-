/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package Controller;

import Model.DonateModel;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import Model.UserModel;
import javax.servlet.http.HttpSession;
import java.util.ArrayList;
import java.util.List;
/**
 *
 * @author killua
 */
public class User extends HttpServlet {

  
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
        throws ServletException, IOException {
        String action= request.getParameter("action");
        if (action.equals("logout")) {
            HttpSession session = request.getSession();
            session.invalidate();
            response.sendRedirect(request.getContextPath());
        }
//        UserModel um = new UserModel();
//        List<UserModel> dataUser = new ArrayList<UserModel>();
//        dataUser = um.DataUser();
//        request.setAttribute("dataUser", dataUser);
//        request.getRequestDispatcher("backend/user/DataUser.jsp").forward(request, response);
    }
@Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
        throws ServletException, IOException {
        String proses = request.getParameter("proses");

        if (proses.equals("login")) {
            String user = request.getParameter("name");
            String pass = request.getParameter("password");
            String email=request.getParameter("email");
            String roles=request.getParameter("roles");
            String id=request.getParameter("id_user");
            if (pass == null || pass.equals("")) {   //validasi apabila field belum diisi
                response.sendRedirect("form-kosong.jsp");
            } else {
                UserModel pm = new UserModel();
                List<UserModel> datalogin = new ArrayList<UserModel>();

                datalogin = pm.LoginUser(email, pass);
                if (datalogin.isEmpty()) { //validasi apabila username dan password salah
                    response.sendRedirect("auth/login.jsp"); 
                } else {
                    HttpSession session = request.getSession(true);
                    session.setAttribute("email", datalogin.get(0).getEmail());
                    session.setAttribute("name", datalogin.get(0).getName());
                    session.setAttribute("id", datalogin.get(0).getId());
                    session.setAttribute("roles", datalogin.get(0).getRoles());
                    session.setAttribute("password", datalogin.get(0).getPassword());

                    if (datalogin.get(0).getEmail().equals(email)) {
                        if(datalogin.get(0).getRoles().equals("customers")){
                            response.sendRedirect("Courses.jsp");
                        }else{
                            response.sendRedirect("Courses.jsp");
                        }
                    } else {
                        response.sendRedirect("auth/login.jsp");
                    }
                }
            }
        }
        else if(proses.equals("register")){
        String name = request.getParameter("name");
        String email = request.getParameter("email");
        String password = request.getParameter("password");
        UserModel pm = new UserModel();
        pm.CreateUser(name, email, password, "customer");
        response.sendRedirect(request.getContextPath());
        }
        else if(proses.equals("registeradmin")){
        String name = request.getParameter("name");
        String email = request.getParameter("email");
        String password = request.getParameter("password");
        String roles = request.getParameter("roles");
        UserModel pm = new UserModel();
        pm.CreateUser(name, email, password, roles);
        response.sendRedirect("backend/user/DataUser.jsp");
        }
        else if (proses.equals("deleteuser")) {
            UserModel pm = new UserModel();
            String id = request.getParameter("id");
            pm.DeleteUser(id);
            response.sendRedirect("backend/user/DataUser.jsp");
        }
        else if (proses.equals("updateuser")) {
            String id = request.getParameter("id");
            List<UserModel> updatedata = new ArrayList<UserModel>();
            UserModel um = new UserModel();
            updatedata = um.SearchUser(id);
            HttpSession session = request.getSession(true);
            session.setAttribute("id_user", updatedata.get(0).getId());
            session.setAttribute("name_user", updatedata.get(0).getName());
            session.setAttribute("email_user", updatedata.get(0).getEmail());
            session.setAttribute("password_user", updatedata.get(0).getPassword());
            session.setAttribute("roles_user", updatedata.get(0).getRoles());
            response.sendRedirect("backend/user/EditUser.jsp");
        }
        else if (proses.equals("updateuserdata")) {
            String id_user = request.getParameter("id_user");
            String name = request.getParameter("name_user");
            String email = request.getParameter("email_user");
            String password = request.getParameter("password_user");
            String roles = request.getParameter("roles_user");
            UserModel um = new UserModel();
            um.UpdateUser(name, email, password, roles, id_user);
            response.sendRedirect("backend/user/DataUser.jsp");
        }
        else if (proses.equals("settinguserdata")) {
            String id_setting = request.getParameter("id_setting");
            String name_setting = request.getParameter("name_setting");
            String email_setting = request.getParameter("email_setting");
            String password_setting = request.getParameter("password_setting");
            String roles_setting = request.getParameter("roles_setting");
            UserModel um = new UserModel();
            um.UpdateUser(name_setting, email_setting, password_setting, roles_setting, id_setting);
            HttpSession session = request.getSession(true);
                    session.setAttribute("email", email_setting);
                    session.setAttribute("name", name_setting);
                    session.setAttribute("id", id_setting);
                    session.setAttribute("roles", roles_setting);
                    session.setAttribute("password", password_setting);
            response.sendRedirect(request.getContextPath());
        }
        else if(proses.equals("donate")){
        String name = request.getParameter("name");
        String amount = request.getParameter("amount");
        String message = request.getParameter("message");
        DonateModel pm = new DonateModel();
        pm.Donate(name, amount, message);
        HttpSession session = request.getSession(true);
        session.setAttribute("sukses", "true");
        response.sendRedirect(request.getContextPath() + "/donation.jsp");
        }
        else{
            response.sendRedirect("auth/login.jsp");
        }
    }
}