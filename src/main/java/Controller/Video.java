/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package Controller;

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
public class Video extends HttpServlet {

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
        if(proses.equals("add")){
        String type = request.getParameter("type");
        String title = request.getParameter("title");
        String code = request.getParameter("code");
        VideoModel vm = new VideoModel();
        vm.CreateVideo(type, title, code);
        response.sendRedirect("backend/video/DataVideo.jsp");
        }
        else if (proses.equals("deletevideo")) {
            VideoModel vm = new VideoModel();
            String id = request.getParameter("id");
            vm.DeleteVideo(id);
            response.sendRedirect("backend/video/DataVideo.jsp");
        }
        else if (proses.equals("updatevideo")) {
            String id = request.getParameter("id");
            List<VideoModel> updatedata = new ArrayList<VideoModel>();
            VideoModel vm = new VideoModel();
            updatedata = vm.OneVideo(id);
            HttpSession session = request.getSession(true);
            session.setAttribute("id_video", updatedata.get(0).getId());
            session.setAttribute("type_video", updatedata.get(0).getType());
            session.setAttribute("title_video", updatedata.get(0).getTitle());
            session.setAttribute("code_video", updatedata.get(0).getCode());
            response.sendRedirect("backend/video/EditVideo.jsp");
        }
        else if (proses.equals("updatevideodata")) {
            String id_video = request.getParameter("id_video");
            String type = request.getParameter("type_video");
            String title = request.getParameter("title_video");
            String code = request.getParameter("code_video");
            VideoModel vm = new VideoModel();
            vm.UpdateVideo(type, title, code, id_video);
            response.sendRedirect("backend/video/DataVideo.jsp");
        }
        else{
            response.sendRedirect("auth/login.jsp");
        }
    }
}