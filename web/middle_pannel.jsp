<%@page import="java.sql.Date"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="com.socialdocapp.dao.PostDao"%>
<%@page import="com.socialdocapp.model.Post"%>
<%@page import="java.util.ArrayList"%>
<!-- Post Create Box
                        ================================================= -->

<!---Post MOdal-->
<div id="modal1" class="modal fade">
               <div class="modal-dialog">  <div class=""><div class="modal-content">
                   <div class="modal-header">
                       <button class="close" data-dismiss="modal">&times;</button>
                        <h4 class="modal-title">You Can Write Something....</h4>
                         </div>
                        <div class="modal-body">
                          <form method="post" enctype="multipart/form-data" action="post_action.jsp">
                        <textarea style="width:100%;" name="post_text" contenteditable="true" class="w3-border w3-padding"></textarea>  
                        <input type="file" name="post_image"/>
                        <select name="post_type">
                            <option>public</option>
                            <option>Friends</option>
                            <option>Private</option>
                        </select>
                        <br><br>
                        <button type="submit" class="w3-button w3-theme"><i class="fa fa-pencil"></i> &nbsp;Post</button> 
                    </form> 
           
                    </div>
                    </div>
                </div>
                </div>
            </div>

<!--Close model-->
<div class="create-post">
    <div class="row">
        <div class="col-md-7 col-sm-7">
            <div class="form-group">
                <img src="profile/<%=session.getAttribute("profile")%>" alt="" class="profile-photo-md" />
                <textarea name="texts" id="exampleTextarea" cols="30" rows="1" class="form-control" placeholder="Write what you wish"></textarea>
            </div>
        </div>
        <div class="col-md-5 col-sm-5">
            <div class="tools">
                <ul class="publishing-tools list-inline">
                    <li><a href="#" data-toggle="modal" data-target="#modal1"><i class="ion-compose"></i></a></li>
                    <li><a href="#"><i class="ion-images"></i></a></li>
                    <li><a href="#"><i class="ion-ios-videocam"></i></a></li>
                    <li><a href="#"><i class="ion-map"></i></a></li>
                </ul>
                <button class="btn btn-primary pull-right">Publish</button>
            </div>
        </div>
    </div>
</div><!-- Post Create Box End-->

<%
    ArrayList<Post> al = PostDao.getPost();
    for (Post post : al) {
        String date = post.getPostDate();
        SimpleDateFormat sd = new SimpleDateFormat("dd/MM/yyyy hh:mm");
        date = sd.format(new Date(Long.parseLong(date)));
%> 

<!-- Post Content
================================================= -->
<div class="post-content">
    <img src="post_image/<%=post.getPostImage()%>" alt="post-image" class="img-responsive post-image" />
    <div class="post-container">
        <img src="profile/<%=post.getProfile()%>" alt="user" class="profile-photo-md pull-left" />
        <div class="post-detail">
            <div class="user-info">
                <h5><a href="timeline.html" class="profile-link"><%=post.getUsername()%></a> <span class="following">following</span></h5>
                <p class="text-muted">Published a <%=date%></p>
            </div>
            <div class="reaction">
                <a class="btn text-green"><i class="icon ion-thumbsup"></i> 13</a>
                <a class="btn text-red"><i class="fa fa-thumbs-down"></i> 0</a>
            </div>
            <div class="line-divider"></div>
            <div class="post-text">
                <p><%=post.getPostText()%> <i class="em em-anguished"></i> <i class="em em-anguished"></i> <i class="em em-anguished"></i></p>
            </div>
            <div class="line-divider"></div>
            <div class="post-comment">
                <img src="images/users/user-11.jpg" alt="" class="profile-photo-sm" />
                <p><a href="timeline.html" class="profile-link">Diana </a><i class="em em-laughing"></i> Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud </p>
            </div>
            <div class="post-comment">
                <img src="images/users/user-1.jpg" alt="" class="profile-photo-sm" />
                <input type="text" class="form-control" placeholder="Post a comment">
            </div>

        </div>
    </div>
</div>
<%}%>

<!-- Post Content
================================================= -->
