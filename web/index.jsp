<%@page import="com.socialdocapp.dao.ContryDAO"%>
<%@page import="com.socialdocapp.model.Country"%>
<%@page import="com.socialdocapp.dao.SpecializationDAO"%>
<%@page import="com.socialdocapp.model.Specialization"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page import="java.util.ArrayList"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta http-equiv="content-type" content="text/html; charset=utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta name="description" content="This is social network html5 template available in themeforest......" />
        <meta name="keywords" content="Social Network, Social Media, Make Friends, Newsfeed, Profile Page" />
        <meta name="robots" content="index, follow" />
        <title>DocTalk</title>

        <!-- Stylesheets
        ================================================= -->
        <link rel="stylesheet" href="css/bootstrap.min.css" />
		<link rel="stylesheet" href="css/style.css" />
		<link rel="stylesheet" href="css/ionicons.min.css" />
    <link rel="stylesheet" href="css/font-awesome.min.css" />
    
        <!--Google Font-->
        <link href="https://fonts.googleapis.com/css?family=Lato:300,400,400i,700,700i" rel="stylesheet">

        <!--Favicon-->
        <link rel="shortcut icon" type="image/png" href="static/images/fav.png"/>
        <script>
            function getState(cid) {
                var xhttp = new XMLHttpRequest();
                xhttp.open('GET', 'getstate.jsp?cid=' + cid, true);
                xhttp.send();

                xhttp.onreadystatechange = function () {
                    if (xhttp.status == 200 && xhttp.readyState == 4)
                    {
                        document.getElementById("sid").innerHTML = this.responseText;
                    }
                }
            }
        </script>
        <script>
            function getCity(sid) {
                var xhttp = new XMLHttpRequest();
                xhttp.open('GET', 'getcity.jsp?sid=' + sid, true);
                xhttp.send();
                xhttp.onreadystatechange = function () {
                    if (xhttp.status == 200 && xhttp.readyState == 4)
                    {document.getElementById("cid").innerHTML = this.responseText;
                    }
                }
            }
        </script>
    </head>
    <body>

        <!-- Header
        ================================================= -->
        <header id="header-inverse">
            <nav class="navbar navbar-default navbar-fixed-top menu">
                <div class="container">

                    <!-- Brand and toggle get grouped for better mobile display -->
                    <div class="navbar-header">
                        <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
                            <span class="sr-only">Toggle navigation</span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                        </button>
                        <a class="navbar-brand" href="newsfeed.jsp"><img src="images/logo.png" alt="logo" /></a><p style="color: white;font-family: Times new Roman">TalkDoc</p>
                    </div>

                    <!-- Collect the nav links, forms, and other content for toggling -->
                    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                        <ul class="nav navbar-nav navbar-right main-menu">
                            <li class="dropdown">
                                <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Home <span><img src="static/images/down-arrow.png" alt="" /></span></a>
                                <ul class="dropdown-menu newsfeed-home">
                                    <li><a href="index.html">Landing Page 1</a></li>
                                    <li><a href="index-register.html">Landing Page 2</a></li>
                                </ul>
                            </li>
                            <li class="dropdown">
                                <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Newsfeed <span><img src="static/images/down-arrow.png" alt="" /></span></a>
                                <ul class="dropdown-menu newsfeed-home">
                                    <li><a href="newsfeed.html">Newsfeed</a></li>
                                </ul>
                            </li>
                            <li class="dropdown">
                                <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Timeline <span><img src="static/images/down-arrow.png" alt="" /></span></a>
                                <ul class="dropdown-menu login">
                                    <li><a href="timeline.html">Timeline</a></li>
                                    <li><a href="edit-profile-password.html">Change Password</a></li>
                                </ul>
                            </li>
                            <li class="dropdown">
                                <a href="#" class="dropdown-toggle pages" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">All Pages <span><img src="static/images/down-arrow.png" alt="" /></span></a>
                                <ul class="dropdown-menu page-list">
                                    <li><a href="index.html">Landing Page 1</a></li>
                                    <li><a href="404.html">404 Not Found</a></li>
                                </ul>
                            </li>
                            <li class="dropdown"><a href="contact.html">Contact</a></li>
                        </ul>
                        <form class="navbar-form navbar-right hidden-sm">
                            <div class="form-group">
                                <i class="icon ion-android-search"></i>
                                <input type="text" class="form-control" placeholder="Search friends, photos, videos">
                            </div>
                        </form>
                    </div><!-- /.navbar-collapse -->
                </div><!-- /.container -->
            </nav>
        </header>
        <!--Header End-->

        <!-- Landing Page Contents
        ================================================= -->
        <div id="lp-register">
            <div class="container wrapper">
                <div class="row">
                    <div class="col-sm-5">
                        <div class="intro-texts">
                            <h1 class="text-white">Make Cool Friends !!!</h1>
                            <p>Friend Finder is a social network template that can be used to connect people. The template offers Landing pages, News Feed, Image/Video Feed, Chat Box, Timeline and lot more. <br /> <br />Why are you waiting for? Buy it now.</p>
                            <button class="btn btn-primary">Learn More</button>
                        </div>
                    </div>
                    <div class="col-sm-6 col-sm-offset-1">
                        <div class="reg-form-container"> 

                            <!-- Register/Login Tabs-->
                            <div class="reg-options">
                                <ul class="nav nav-tabs">
                                    <li class="active"><a href="#register" data-toggle="tab">Register</a></li>
                                    <li><a href="#login" data-toggle="tab">Login</a></li>
                                </ul><!--Tabs End-->
                            </div>

                            <!--Registration Form Contents-->
                            <div class="tab-content">
                               <div class="tab-pane active" id="register">
                                <h3>Register Now !!!</h3>
                                <p class="text-muted">Be cool and join today. Meet millions</p>
                                <c:if test="${param.act=='reg'}">
                                    <h4>Registration successfully..</h4>
                                </c:if>
                                    <c:if test="${param.act=='logf'}">
                                        <h4 style="color:red;">login Failed....</h4>
                                    </c:if>

                                <c:if test="${err!=null}">
                                    <p class="errMsg">${err}</p>
                                </c:if>

                                <!--Register Form-->
                                <form name="registration_form" id='registration_form' class="form-inline" action="signup_task.jsp" method="POST">
                                    <div class="row">
                                        <div class="form-group col-xs-6">
                                            <label for="username" class="sr-only">Username</label>
                                            <input id="firstname" class="form-control input-group-lg" type="text" name="username" title="Enter first name" placeholder="First name"/>
                                        </div>
                                        <div class="form-group col-xs-6">
                                            <label for="Mobile" class="sr-only">Mobile No</label>
                                            <input id="Mobile" class="form-control input-group-lg" type="text" name="mobile" title="Enter mobile num" placeholder="mobile no"/>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="form-group col-xs-12">
                                            <label for="email" class="sr-only">Email</label>
                                            <input id="email" class="form-control input-group-lg" type="text" name="email" title="Enter Email" placeholder="Your Email"/>
                                        </div>
                                    </div>

                                    <div class="row">
                                        <div class="form-group col-xs-6">
                                            <label for="Password" class="sr-only">Password</label>
                                            <input id="Password" class="form-control input-group-lg" type="password" name="password" title="Enter password" placeholder="Enter password"/>
                                        </div>
                                        <div class="form-group col-xs-6">
                                            <label for="Conform password" class="sr-only">Confirm password</label>
                                            <input id="Confirm password" class="form-control input-group-lg" type="text" name="Confirm" title="confirm password" placeholder="Confirm password"/>
                                        </div>
                                    </div>

                                    <div class="row">
                                        <p class="birth"><strong>Date of Birth</strong></p>
                                        <div class="form-group col-xs-12">
                                            <label for="Dob" class="sr-only">Dob</label>
                                            <input id="Dob" class="form-control input-group-lg" type="Date" name="dob" title="Date of birth" placeholder="Date of birth"/>
                                        </div>
                                    </div>
                                    <div class="row">

                                        <div class="form-group col-sm-5 col-xs-10">
                                            <label for="Country" class="sr-only"></label>
                                            <select onchange="getState(this.value)" name="country_id" class="form-control">
                                                <option value="0" disabled selected>Country</option>
                                                <%
                                                    ArrayList<Country> al = ContryDAO.getCountryList();

                                                    for (Country c : al) {%>
                                                <option value="<%=c.getId()%>"><%=c.getCountry()%></option>
                                                <%  }
                                                %>

                                            </select>
                                        </div>
                                        <div class="form-group col-sm-4 col-xs-8">
                                            <label for="state" class="sr-only"></label>
                                            <select onchange="getCity(this.value)" id="sid" name="state_id" class="form-control">
                                                <option value="0" disabled selected>State</option>
                                            </select>
                                        </div>
                                        <div class="form-group col-sm-3 col-xs-6">
                                            <label for="city" class="sr-only"></label>
                                            <select id="cid" name="city_id" class="form-control" >
                                                <option value="0" disabled selected>City</option>

                                            </select>
                                        </div>
                                    </div>
                                    <div class="form-group gender">
                                        <label class="radio-inline">
                                            <input type="radio" name="gender" value="Male" checked>Male
                                        </label>
                                        <label class="radio-inline">
                                            <input type="radio" name="gender" value="Female">Female
                                        </label>
                                    </div>
                                    <div class="row">
                                        <div class="form-group col-xs-6">
                                            <label for="mci no" class="sr-only">MCI NO</label>
                                            <input id="Mci no" class="form-control input-group-lg reg_name" type="text" name="mci_no" title="mci_no" placeholder="Enter Mci Number"/>
                                        </div>
                                        <div class="form-group col-xs-6">
                                            <label for="speciality" class="sr-only"></label>
                                            <select class="form-control" id="speciality" name="specialization_id">
                                                <option value="0" disabled selected>Speciality</option>
                                                <%
                                    ArrayList<Specialization> specializations = SpecializationDAO.getSpecialityList();
                                    for (Specialization s : specializations) {
                                %>
                                                <option value="<%=s.getId()%>"><%=s.getSpeciality()%></option>
                                                <%}%>

                                            </select>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="form-group col-xs-12">
                                            <label for="address" class="sr-only">Address</label>
                                            <input id="address" class="form-control input-group-lg" type="text" name="address" title="Address" placeholder="Address"/>
                                        </div>
                                    </div>
                                    <p><a href="#">Already have an account?</a></p>
                                    <button class="btn btn-primary">Register Now</button>
                                </form><!--Register Now Form Ends-->

                               </div><!--Registration Form Contents Ends-->

                                <!--Login-->
                                <div class="tab-pane" id="login">
                                    <h3>Login</h3>
                                    <p class="text-muted">Log into your account</p>

                                    <!--Login Form-->
                                    <form name="Login_form" id='Login_form' method="post" action="sign_in.jsp">
                                        <div class="row">
                                            <div class="form-group col-xs-12">
                                                <label for="my-email" class="sr-only">Email</label>
                                                <input id="my-email" class="form-control input-group-lg" type="text" name="email" title="Enter Email" placeholder="Your Email"/>
                                            </div>
                                        </div>
                                        <div class="row">
                                            <div class="form-group col-xs-12">
                                                <label for="my-password" class="sr-only">Password</label>
                                                <input id="my-password" class="form-control input-group-lg" type="password" name="password" title="Enter password" placeholder="Password"/>
                                            </div>
                                        </div>
                                        <button class="btn btn-primary">Login Now</button>
                                    </form><!--Login Form Ends--> 
                                    <p><a href="#" data-toggle="modal" data-target="#modal1">Forgot Password?</a></p>
                                    
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-sm-6 col-sm-offset-6">

                        <!--Social Icons-->
                        <ul class="list-inline social-icons">
                            <li><a href="#"><i class="icon ion-social-facebook"></i></a></li>
                            <li><a href="#"><i class="icon ion-social-twitter"></i></a></li>
                            <li><a href="#"><i class="icon ion-social-googleplus"></i></a></li>
                            <li><a href="#"><i class="icon ion-social-pinterest"></i></a></li>
                            <li><a href="#"><i class="icon ion-social-linkedin"></i></a></li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
                                                
<!---forget Password MOdal-->
<div id="modal1" class="modal fade">
               <div class="modal-dialog">  <div class=""><div class="modal-content">
                   <div class="modal-header">
                       <button class="close" data-dismiss="modal">&times;</button>
                        <h4 class="modal-title">Forget Password....</h4>
                         </div>
                        <div class="modal-body">
                          <form name="update-pass" id="education" class="form-inline" action="forget_password_action.jsp" method="post">
                    <div class="row">
                      <div class="form-group col-xs-12">
                        <label for="my-password">Enter Email</label>
                        <input id="my-password" class="form-control input-group-lg" type="email" name="email" title="Enter Email" placeholder="Enter Email"/>
                      </div>
                    </div>
                              <br>
                    
                    <button class="btn btn-primary">Forget Password</button>
                  </form>
           
                    </div>
                    </div>
                </div>
                </div>
            </div>

<!--Close model-->

        <!--preloader-->
        <div id="spinner-wrapper">
            <div class="spinner"></div>
        </div>

        <!--Buy button-->
        <a href="https://themeforest.net/cart/add_items?item_ids=18711273&ref=thunder-team" target="_blank" class="btn btn-buy"><span class="italy">Credit:</span><span class="price">Saurabh Tiwari</span></a>

        <!-- Scripts
        ================================================= -->
        <script src="js/jquery-3.1.1.min.js"></script>
        <script src="js/bootstrap.min.js"></script>
        <script src="js/jquery.appear.min.js"></script>
        <script src="js/jquery.incremental-counter.js"></script>
        <script src="js/script.js"></script>

    </body>
</html>
