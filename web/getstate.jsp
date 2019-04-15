<%@page import="com.google.gson.Gson"%>
<%@page import="com.socialdocapp.model.State"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.socialdocapp.dao.StateDAO"%>
<%
    int cid = Integer.parseInt(request.getParameter("cid"));
    ArrayList<State> al = StateDAO.getStateList(cid);
%>
<option value="0">Select State</option>
  <%
  for(State s:al){
      %>
      
      <option value="<%=s.getId()%>"><%=s.getStateName()%></option>
     
      <%
  }
%>