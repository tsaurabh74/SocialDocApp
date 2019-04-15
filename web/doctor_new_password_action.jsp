<%@page import="com.socialdocapp.dao.DoctorDAO"%>
<%
  String email=request.getParameter("email");
  String pass=request.getParameter("password");
  boolean b=DoctorDAO.forgetPassword(email, pass);
  if(b){
      response.sendRedirect("login.jsp");
  }

%>