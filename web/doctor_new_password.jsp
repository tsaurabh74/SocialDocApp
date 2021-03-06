<%-- 
    Document   : doctor_new_password
    Created on : 12 Apr, 2019, 1:09:32 PM
    Author     : HP
--%>
<%
    String email=request.getParameter("email");
    %>
<%@include file="doctor_home_header_menu.jsp" %>
<div class="container-fluid">

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
                  <li><a href="doctor_persnol_information.jsp" class="active">About</a></li>
                  <li><a href="doctor_album.jsp">Album</a></li>
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
                <li><a href="timeline.jsp">Timeline</a></li>
                  <li><a href="doctor_persnol_information.jsp" class="active">About</a></li>
                  <li><a href="doctor_album.jsp">Album</a></li>
                  <li><a href="doctor_friends.jsp">Friends</a></li>
              </ul>
            </div>
          </div><!--Timeline Menu for Small Screens End-->

        </div>
        <div id="page-contents">
          <div class="row">
            <div class="col-md-3">
              
              <!--Edit Profile Menu-->
            </div>
            <div class="col-md-7">

              <!-- Change Password
              ================================================= -->
              <div class="edit-profile-container">
                <div class="block-title">
                  <h4 class="grey"><i class="icon ion-ios-locked-outline"></i>Change Password</h4>
                  <div class="line"></div>
                  <p>You can now Change your password here...</p>
                  <div class="line"></div>
                </div>
                <div class="edit-block">
                    <form name="update-pass" id="education" class="form-inline" action="doctor_new_password_action.jsp" method="post">
                    <input type="hidden" name="email" value="<%=email %>">
                    <div class="row">
                      <div class="form-group col-xs-6">
                        <label>New password</label>
                        <input class="form-control input-group-lg" type="password" name="password" title="Enter password" placeholder="New password"/>
                      </div>
                      <div class="form-group col-xs-6">
                        <label>Confirm password</label>
                        <input class="form-control input-group-lg" type="password" name="password" title="Enter password" placeholder="Confirm password"/>
                      </div>
                    </div>
                    <button class="btn btn-primary">Update Password</button>
                  </form>
                </div>
              </div>
            </div>
            <div class="col-md-2 static">
              
              <!--Sticky Timeline Activity Sidebar-->
              <div id="sticky-sidebar">
                
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
