<%@page import="com.socialdocapp.dao.DoctorDAO"%>
<jsp:useBean id="doctor" class="com.socialdocapp.model.Doctor" scope="request"/>
<jsp:setProperty name="doctor" property="*"/>
<%
  if(DoctorDAO.saveDoctor(doctor))
                {
                response.sendRedirect("index.jsp?act=reg");
                }
  else{
      response.sendRedirect("index.jsp?act=rf");
  }
%>