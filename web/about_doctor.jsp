<%@include file="doctor_home_header_menu.jsp" %>
    <!--Header End-->

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
              <h4><%=session.getAttribute("username")%></h4>
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

              <!-- Basic Information
              ================================================= -->
              <div class="edit-profile-container">
                <div class="block-title">
                  <h4 class="grey"><i class="icon ion-android-checkmark-circle"></i>Edit basic information</h4>
                  <div class="line"></div>
                  <p>At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate</p>
                  <div class="line"></div>
                </div>
                <div class="edit-block">
                  <form name="basic-info" id="basic-info" class="form-inline">
                    <div class="row">
                      <div class="form-group col-xs-6">
                        <label for="firstname">UserName</label>
                        <input id="firstname" class="form-control input-group-lg" type="text" name="firstname" title="Enter first name" placeholder="First name" value="John" />
                      </div>
                      <div class="form-group col-xs-6">
                        <label for="lastname" class="">Mobile NO</label>
                        <input id="lastname" class="form-control input-group-lg" type="text" name="lastname" title="Enter last name" placeholder="Last name" value="Doe" />
                      </div>
                    </div>
                    <div class="row">
                      <div class="form-group col-xs-12">
                        <label for="email">My Email</label>
                        <input id="email" class="form-control input-group-lg" type="text" name="Email" title="Enter Email" placeholder="My Email" value="razor.venon@gmail.com" readonly/>
                      </div>
                    </div>
                    <div class="row">
                      <p class="custom-label"><strong></strong></p>
                      <div class="form-group col-sm-3 col-xs-6">
                        <label for="month" class="sr-only"></label>
                        <select class="form-control" id="day">
                          <option value="Day">Country</option>
                          <option>1</option>
                          </select>
                      </div>
                      <div class="form-group col-sm-3 col-xs-6">
                        <label for="month" class="sr-only"></label>
                        <select class="form-control" id="month">
                          <option value="month">State</option>
                          
                        </select>
                      </div>
                      <div class="form-group col-sm-6 col-xs-12">
                        <label for="year" class="sr-only"></label>
                        <select class="form-control" id="year">
                          <option value="year">City</option>
                          
                        </select>
                      </div>
                    </div>
                    <div class="form-group gender">
                      <span class="custom-label"><strong>I am a: </strong></span>
                      <label class="radio-inline">
                        <input type="radio" name="optradio" checked>Male
                      </label>
                      <label class="radio-inline">
                        <input type="radio" name="optradio">Female
                      </label>
                    </div>
                    <div class="row">
                      <div class="form-group col-xs-6">
                        <label for="dob"> Date of birth</label>
                        <input id="dob" class="form-control input-group-lg" type="date" name="dob" title="date of birth"/>
                      </div>
                      <div class="form-group col-xs-6">
                        <label for="country">Experience</label>
                        <input type="text" name="experiance" class="form-control">
                      </div>
                    </div>
                    <div class="row">
                      <div class="form-group col-xs-12">
                        <label for="my-info">Address</label>
                        <textarea id="my-info" name="information" class="form-control" placeholder="Some texts about me" rows="4" cols="400"></textarea>
                      </div>
                    </div>
                    <button class="btn btn-primary">Save Changes</button>
                  </form>
                </div>
              </div>
            </div>
            <div class="col-md-2 static">
              
              <!--Sticky Timeline Activity Sidebar-->
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
