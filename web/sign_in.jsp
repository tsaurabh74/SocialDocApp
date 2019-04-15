<%@page import="com.socialdocapp.dao.DoctorDAO"%>
<jsp:useBean id="doctor" class="com.socialdocapp.model.Doctor" scope="request"/>
<jsp:setProperty name="doctor" property="*"/>
<%
    if (DoctorDAO.aunthenticateDoctor(doctor, session)) {
        response.sendRedirect("newsfeed.jsp");
    } else {
        response.sendRedirect("index.jsp?act=logf");
    }
%>