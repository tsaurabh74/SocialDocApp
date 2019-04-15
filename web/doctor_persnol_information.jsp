<%@page import="com.socialdocapp.model.City"%>
<%@page import="com.socialdocapp.dao.DoctorDAO"%>
<%@include file="doctor_home_header_menu.jsp" %>

<%
    City c=DoctorDAO.getAllInfo((Integer)session.getAttribute("id"));
    %>

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
              <h4><%=session.getAttribute("username")%>s</h4>
              <p class="text-muted">Creative Director</p>
            </div>
            <div class="mobile-menu">
              <ul class="list-inline">
                <li><a href="timline.jsp">Timeline</a></li>
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
              <%@include file="edit_profile_menu.jsp"%>
             <!--End Edit Profile Menu -->
              </div>
            <div class="col-md-7">

              <!-- About
              ================================================= -->
              <div class="about-profile">
                <div class="about-content-block">
                  <h4 class="grey"><i class="ion-ios-information-outline icon-in-title"></i>Personal Information</h4>
                  <p>Here is all about your persnol Information...</p>
                </div>
                <div class="about-content-block">
                  <h4 class="grey"><i class="ion-ios-briefcase-outline icon-in-title"></i>Doctor </h4>
                  <div class="organization">
                    <img src="images/envato.png" alt="" class="pull-left img-org" />
                    <div class="work-info">
                      <h5>UserName</h5>
                      <p><span class="text-grey"><%=c.getUsername()%></span></p>
                    </div>
                  </div>
                  <div class="organization">
                    <img src="images/envato.png" alt="" class="pull-left img-org" />
                    <div class="work-info">
                      <h5>Email</h5>
                      <p><span class="text-grey"><%=c.getEmail()%></span></p>
                    </div>
                  </div>
                  <div class="organization">
                    <img src="images/envato.png" alt="" class="pull-left img-org" />
                    <div class="work-info">
                      <h5>Country</h5>
                      <p><span class="text-grey"><%=c.getCountry() %></span></p>
                    </div>
                  </div>
                  <div class="organization">
                    <img src="images/envato.png" alt="" class="pull-left img-org" />
                    <div class="work-info">
                      <h5>State</h5>
                      <p><span class="text-grey"><%=c.getStateName() %></span></p>
                    </div>
                  </div>
                  <div class="organization">
                    <img src="images/envato.png" alt="" class="pull-left img-org" />
                    <div class="work-info">
                      <h5>City</h5>
                      <p><span class="text-grey"><%=c.getCityName() %></span></p>
                    </div>
                  </div>
                  <div class="organization">
                    <img src="images/envato.png" alt="" class="pull-left img-org" />
                    <div class="work-info">
                      <h5>Gender</h5>
                      <p><span class="text-grey"><%=c.getGender() %></span></p>
                    </div>
                  </div>
                  <div class="organization">
                    <img src="images/envato.png" alt="" class="pull-left img-org" />
                    <div class="work-info">
                      <h5>Mobile</h5>
                      <p><span class="text-grey"><%=c.getMobile()%></span></p>
                    </div>
                  </div>
                  <div class="organization">
                    <img src="images/envato.png" alt="" class="pull-left img-org" />
                    <div class="work-info">
                      <h5>Address</h5>
                      <p><span class="text-grey"><%=c.getAddress() %></span></p>
                    </div>
                  </div>
                  
                </div>
                <div class="about-content-block">
                  <h4 class="grey"><i class="ion-ios-location-outline icon-in-title"></i>Location</h4>
                  <p>228 Park Eve, New York</p>
                  <div class="google-maps">
                    <div id="map" class="map"></div>
                  </div>
                </div>
                <div class="about-content-block">
                  <h4 class="grey"><i class="ion-ios-heart-outline icon-in-title"></i>Interests</h4>
                  <ul class="interests list-inline">
                    <li><span class="int-icons" title="Bycycle riding"><i class="icon ion-android-bicycle"></i></span></li>
                    <li><span class="int-icons" title="Photography"><i class="icon ion-ios-camera"></i></span></li>
                    <li><span class="int-icons" title="Shopping"><i class="icon ion-android-cart"></i></span></li>
                    <li><span class="int-icons" title="Traveling"><i class="icon ion-android-plane"></i></span></li>
                    <li><span class="int-icons" title="Eating"><i class="icon ion-android-restaurant"></i></span></li>
                  </ul>
                </div>
                <div class="about-content-block">
                  <h4 class="grey"><i class="ion-ios-chatbubble-outline icon-in-title"></i>Language</h4>
                    <ul>
                      <li><a href="">Russian</a></li>
                      <li><a href="">English</a></li>
                    </ul>
                </div>
              </div>
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
    <script async defer src="https://maps.googleapis.com/maps/api/js?key=AIzaSyCTMXfmDn0VlqWIyoOxK8997L-amWbUPiQ&callback=initMap"></script>
    <script src="js/jquery-3.1.1.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/jquery.sticky-kit.min.js"></script>
    <script src="js/jquery.scrollbar.min.js"></script>
    <script src="js/script.js"></script>
    
  </body>
</html>
