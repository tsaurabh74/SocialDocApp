<%@page import="java.util.ArrayList"%>
<%@page import="com.socialdocapp.dao.PostDao"%>
<%@page import="com.socialdocapp.model.Post"%>
<%@include file="doctor_home_header_menu.jsp" %>
    <div class="container">

      <!-- Timeline
      ================================================= -->
      <div class="timeline">
        <div class="timeline-cover">

          <!--Timeline Menu for Large Screens-->
          <div class="timeline-nav-bar hidden-sm hidden-xs">
            <div class="row">
              <div class="col-md-3">
                <div class="profile-info">
                  <img src="profile/<%=session.getAttribute("profile")%>" alt="" class="img-responsive profile-photo" />
                  <h3><%=session.getAttribute("username")%></h3>
                  <p class="text-muted">Creative Director</p>
                </div>
              </div>
              <div class="col-md-9">
                <ul class="list-inline profile-menu">
                  <li><a href="timeline.jsp">Timeline</a></li>
                  <li><a href="doctor_persnol_information.jsp">About</a></li>
                  <li><a href="doctor_album.jsp" class="active">Album</a></li>
                  <li><a href="doctor_friends.jsp">Friends</a></li>
                </ul>
              </div>
            </div>
          </div><!--Timeline Menu for Large Screens End-->

          <!--Timeline Menu for Small Screens-->
          <div class="navbar-mobile hidden-lg hidden-md">
            <div class="profile-info">
              <img src="profile/<%=session.getAttribute("profile")%>" alt="" class="img-responsive profile-photo" />
                  <h3><%=session.getAttribute("username")%></h3>
              <p class="text-muted">Creative Director</p>
            </div>
            <div class="mobile-menu">
              <ul class="list-inline">
                <li><a href="timline.jsp">Timeline</a></li>
                <li><a href="doctor_persnol_information.jsp">About</a></li>
                <li><a href="doctor_album.jsp" class="active">Album</a></li>
                <li><a href="doctor_friends.jsp">Friends</a></li>
              </ul>
             
            </div>
          </div><!--Timeline Menu for Small Screens End-->

        </div>
        <div id="page-contents">
          <div class="row">
            <div class="col-md-3"></div>
            <div class="col-md-7">

              <!-- Photo Album
              ================================================= -->
             
              <ul class="album-photos">
                   
               
                    <%
                  ArrayList<Post> ar=PostDao.getAllImages((Integer)session.getAttribute("id"));
                  int i=1;
                  for(Post pp:ar){   
                  
                    %>
                   <li>
                       <div class="img-wrapper" data-toggle="modal" data-target=".photo<%=i%>">
                      <img src="post_image/<%=pp.getPostImage()%>" alt="photo" />
                  </div>
                  
                  
                  <div class="modal fade photo<%=i%>" tabindex="-1" role="dialog" aria-hidden="true">
                    <div class="modal-dialog modal-lg">
                      <div class="modal-content">
                        <img src="post_image/<%=pp.getPostImage()%>" alt="photo" />
                      </div>
                    </div>
                  </div>
                   </li>
                      <%
                          i++;
                          }
                      %>
                
                
                
              </ul>
            </div>
            <div class="col-md-2 static">
              <div id="sticky-sidebar">
                <h4 class="grey">Sarah's activity</h4>
                <div class="feed-item">
                  <div class="live-activity">
                    <p><a href="#" class="profile-link">Sarah</a> Commended on a Photo</p>
                    <p class="text-muted">5 mins ago</p>
                  </div>
                </div>
                <div class="feed-item">
                  <div class="live-activity">
                    <p><a href="#" class="profile-link">Sarah</a> Has posted a photo</p>
                    <p class="text-muted">an hour ago</p>
                  </div>
                </div>
                <div class="feed-item">
                  <div class="live-activity">
                    <p><a href="#" class="profile-link">Sarah</a> Liked her friend's post</p>
                    <p class="text-muted">4 hours ago</p>
                  </div>
                </div>
                <div class="feed-item">
                  <div class="live-activity">
                    <p><a href="#" class="profile-link">Sarah</a> has shared an album</p>
                    <p class="text-muted">a day ago</p>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>


   
    <!-- Footer
    ================================================= -->
    
    <%@include file="footer.jsp" %>
    
    <!--End Footer --> 
    <!--preloader-->
    <div id="spinner-wrapper">
      <div class="spinner"></div>
    </div>
    
    <!--Buy button-->
    <a href="https://themeforest.net/cart/add_items?item_ids=18711273&ref=thunder-team" target="_blank" class="btn btn-buy"><span class="italy">Buy with:</span><img src="images/envato_logo.png" alt="" /><span class="price">Only $20!</span></a>

    <!-- Scripts
    ================================================= -->
    <script src="js/jquery-3.1.1.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/jquery.sticky-kit.min.js"></script>
    <script src="js/jquery.scrollbar.min.js"></script>
    <script src="js/script.js"></script>

  </body>
</html>
