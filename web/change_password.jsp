<%@page import="com.socialdocapp.dao.DoctorDAO"%>
<%
  String oldPass=request.getParameter("old_password");
  String newPass=request.getParameter("password");
  int id=(Integer)session.getAttribute("id");
  boolean b=DoctorDAO.changePassword(oldPass, newPass, id);
  if(b){
      response.sendRedirect("newsfeed.jsp");
  }
  else{
      response.sendRedirect("edit_doctor_password.jsp");
  }
%>