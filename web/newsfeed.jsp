<%--Header Part--%>
<%@include file="doctor_home_header_menu.jsp" %>
<%--End Header--%>

        <div id="page-contents">
            <div class="container-fluid">
                <div class="row">

                    <!-- Newsfeed Common Side Bar Left
                    ================================================= -->
                    <%@include file="left_pannel.jsp" %>
                    <div class="col-md-7">
                        <!--Middle pannel-->

                        <%@include file="middle_pannel.jsp" %>
                    </div>

                    <!-- Newsfeed Common Side Bar Right
                    ================================================= -->
                    <%@include file="right_pannel.jsp" %>
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
