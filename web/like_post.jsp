<%@page import="com.socialdocapp.model.LikePost"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.socialdocapp.dao.LikePostDAO"%>
<%
 int postId=Integer.parseInt(request.getParameter("postId"));
  int doctorId=Integer.parseInt(request.getParameter("doctorId"));
  boolean b=LikePostDAO.saveLike(postId, doctorId);

  if(b){
      
       ArrayList<LikePost> likeList = LikePostDAO.totalLike(postId);
            boolean isLiked = false;
            for (LikePost lp : likeList) {
                if (lp.getDoctorId() == Integer.parseInt(session.getAttribute("id").toString())) {
                    isLiked = true;
                }
            }
            if (!isLiked) {
        %>    
        <button onclick="likePost(<%=postId%>,<%=session.getAttribute("id")%>)" type="button" class="w3-button w3-theme-d1 w3-margin-bottom">

            <i class="fa fa-thumbs-up"></i> &nbsp;<%=likeList.size()%>Like
        </button> 
        <%
        } else {
        %>
        <button onclick="likePost(<%=postId%>,<%=session.getAttribute("id")%>)" type="button" class="w3-button w3-theme-d1 w3-margin-bottom">

            <i class="fa fa-thumbs-up"></i> &nbsp;<%=likeList.size()%>&nbsp;Liked
        </button> 
        <%

  }
  }

%>