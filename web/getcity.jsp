<%@page import="com.socialdocapp.model.City"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.socialdocapp.dao.CityDAO"%>
<%@page import="com.google.gson.Gson"%>
<%
  int sid = Integer.parseInt(request.getParameter("sid"));
         
          ArrayList<City> ar= CityDAO.getCityList(sid);
          %>
  <option value="">Select City</option>
  <%
  for(City c:ar){
      %>
      
      <option value="<%=c.getId()%>"><%=c.getCityName()%></option>
     
      <%
  }
               
%>