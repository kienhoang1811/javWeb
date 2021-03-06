<%-- 
    Document   : home.jsp
    Created on : Apr 10, 2022, 11:16:17 AM
    Author     : Kien Mason
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>W3.CSS Template</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
        <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Raleway">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        <link rel="stylesheet" href="resources/css/home.css"/>
        <link rel="stylesheet" href="resources/css/dashboard.css"/>
    </head>

    <body class="w3-light-grey w3-content" style="max-width:1600px">

        <!-- Sidebar/menu -->
        <nav class="w3-sidebar w3-collapse w3-white w3-animate-left" style="z-index:3;width:300px;" id="mySidebar"><br>
            <div class="w3-container">
                <a href="#" onclick="w3_close()" class="w3-hide-large w3-right w3-jumbo w3-padding w3-hover-grey" title="close menu">
                    <i class="fa fa-remove"></i>
                </a>
                <img src="resources/images/logo.png" style="width:45%;" class="w3-round"><br><br>
                <h4><b>Dashboard</b></h4>
                <p class="w3-text-grey" id="account_name">Drawer</p>
            </div>
            <div class="w3-bar-block">
                <a href="#trip" onclick="w3_close()" class="w3-bar-item w3-button w3-padding drawer_link"><i class="fa fa-th-large fa-fw w3-margin-right"></i>All Trips</a> 
                <!--<a href="#portfolio" onclick="w3_close()" class="w3-bar-item w3-button w3-padding w3-text-teal"><i class="fa fa-th-large fa-fw w3-margin-right"></i>All Buses</a>--> 
                <a href="#user" onclick="w3_close()" class="w3-bar-item w3-button w3-padding drawer_link"><i class="fa fa-th-large fa-fw w3-margin-right"></i>List User</a> 
                <a href="#addUser" onclick="w3_close()" class="w3-bar-item w3-button w3-padding drawer_link"><i class="fa fa-user fa-fw w3-margin-right"></i>Add User</a> 
                <a href="#lineChart" onclick="w3_close()" class="w3-bar-item w3-button w3-padding drawer_link"><i class="fa fa-envelope fa-fw w3-margin-right"></i>Line Chart Revenue</a>
                <a href="#doughnutChart" onclick="w3_close()" class="w3-bar-item w3-button w3-padding drawer_link"><i class="fa fa-envelope fa-fw w3-margin-right"></i>Doughnut Chart Revenue</a>
            </div>
            <button class="btn_logout" type="button" onclick="logout()">Log out</button>
            <div class="w3-panel w3-large">
                <i class="fa fa-facebook-official w3-hover-opacity"></i>
                <i class="fa fa-instagram w3-hover-opacity"></i>
                <i class="fa fa-snapchat w3-hover-opacity"></i>
                <i class="fa fa-pinterest-p w3-hover-opacity"></i>
                <i class="fa fa-twitter w3-hover-opacity"></i>
                <i class="fa fa-linkedin w3-hover-opacity"></i>
            </div>
        </nav>

        <!-- Overlay effect when opening sidebar on small screens -->
        <div class="w3-overlay w3-hide-large w3-animate-opacity" onclick="w3_close()" style="cursor:pointer" title="close side menu" id="myOverlay"></div>

        <!-- !PAGE CONTENT! -->
        <div class="w3-main" style="margin-left:300px">

            <!-- Header -->
            <header id="trip">
                <a href="#"><img src="resources/images/logo.png" style="width:65px;" class="w3-circle w3-right w3-margin w3-hide-large w3-hover-opacity"></a>
                <span class="w3-button w3-hide-large w3-xxlarge w3-hover-text-grey" onclick="w3_open()"><i class="fa fa-bars"></i></span>
                <form class="w3-container" onsubmit="search(event)">
                    <h1><b>List Trips</b></h1>
                    <div class="w3-section w3-bottombar w3-padding-16">
                        <span class="w3-margin-right">Filter:</span> 
                        <input class="trip_filter" id="kw" type="text"/>
                        <button type="submit" class="w3-button w3-black">Search</button>
                        <button type="button" class="w3-button w3-black" onclick="getTrips()">ALL</button>
                        <!--                        <button class="w3-button w3-white"><i class="fa fa-diamond w3-margin-right"></i>Design</button>
                                                <button class="w3-button w3-white w3-hide-small"><i class="fa fa-photo w3-margin-right"></i>Photos</button>
                                                <button class="w3-button w3-white w3-hide-small"><i class="fa fa-map-pin w3-margin-right"></i>Art</button>-->
                    </div>
                </form>
            </header>

            <!-- First Photo Grid-->

            <div class="grid-container" id="listTrip">
                <!--js loop-->
            </div>

            <div class="w3-container w3-padding-large">
                <h4 id="user"><b>List User</b></h4>
                <table class="table table-striped">
                    <thead>
                        <tr>
                            <th scope="col">ID</th>
                            <th scope="col">Firstname</th>
                            <th scope="col">Lastname</th>
                            <th scope="col">Email</th>   
                            <th scope="col">Role</th>
                            <th scope="col">Created_at</th>
                            <th scope="col">Updated_at</th>
                        </tr>
                    </thead>
                    <tbody id="listUser">
                        <!--js loop-->

                    </tbody>
                </table>

                <h2 id ="addUser">Add User</h2>
                <!-- Trigger the modal with a button -->
                <button type="button" class="btn btn-info btn-lg" data-toggle="modal" data-target="#addUserModal">+</button>

                <!-- Modal -->
                <div class="modal fade" id="addUserModal" role="dialog">
                    <div class="modal-dialog">

                        <!-- Modal content-->
                        <div class="modal-content">
                            <div class="modal-header">
                                <button type="button" class="close" data-dismiss="modal">&times;</button>
                                <h4 class="modal-title">Modal Header</h4>
                            </div>
                            <form id="addUserForm" class="modal-body" enctype="multipart/form-data">
                                <!--<input class="trip_input" type="text" name ="user_id" disabled value='${id}'/>-->
                                <input class="trip_input" type="text" name ="add_email" placeholder="Email:"/>
                                <input class="trip_input" type="text" name ="add_firstname" placeholder="Firstname:"/>
                                <input class="trip_input" type="text" name ="add_lastname" placeholder="Lastname:"/>
                                <input class="trip_input" type="password" name ="add_password" placeholder="Password:"/>
                                <input class="trip_input" type="text" name ="add_role" placeholder="Role:"/>
                                <button class="trip_button" type="submit" onclick="addUser(event)" class="btn btn-default" data-dismiss="modal">Submit</button>
                            </form>
                        </div>

                    </div>
                </div>
            </div>


            <div class="w3-container w3-padding-large" style="margin-bottom:32px">
                <h4 style="text-align: center;"><b>Line Chart Revenue</b></h4>

                <canvas id="lineChart" style="width:100%;max-width:1100px"></canvas>

                <h4 style="text-align: center;"><b>Doughtnut Chart Revenue</b></h4>
                
                <canvas id="doughnutChart" style="width:100%;max-width:1100px"></canvas>
            </div>

            <!-- Contact Section -->
            <!--            <div class="w3-container w3-padding-large w3-grey">
                            <h4 id="contact"><b>Contact us</b></h4>
                            <div class="w3-row-padding w3-center w3-padding-24" style="margin:0 -16px">
                                <div class="w3-third w3-dark-grey">
                                    <p><i class="fa fa-envelope w3-xxlarge w3-text-light-grey"></i></p>
                                    <p>email@email.com</p>
                                </div>
                                <div class="w3-third w3-teal">
                                    <p><i class="fa fa-map-marker w3-xxlarge w3-text-light-grey"></i></p>
                                    <p>Chicago, US</p>
                                </div>
                                <div class="w3-third w3-dark-grey">
                                    <p><i class="fa fa-phone w3-xxlarge w3-text-light-grey"></i></p>
                                    <p>512312311</p>
                                </div>
                            </div>
                            <hr class="w3-opacity">
                            <form action="/action_page.php" target="_blank">
                                <div class="w3-section">
                                    <label>Name</label>
                                    <input class="w3-input w3-border" type="text" name="Name" required>
                                </div>
                                <div class="w3-section">
                                    <label>Email</label>
                                    <input class="w3-input w3-border" type="text" name="Email" required>
                                </div>
                                <div class="w3-section">
                                    <label>Message</label>
                                    <input class="w3-input w3-border" type="text" name="Message" required>
                                </div>
                                <button type="submit" class="w3-button w3-black w3-margin-bottom"><i class="fa fa-paper-plane w3-margin-right"></i>Send Message</button>
                            </form>
                        </div>-->

            <!-- Footer -->
            <footer class="w3-container w3-padding-32 w3-dark-grey">
                <div class="w3-row-padding">
                    <div class="w3-third">
                        <h3>FOOTER</h3>
                        <p>Praesent tincidunt sed tellus ut rutrum. Sed vitae justo condimentum, porta lectus vitae, ultricies congue gravida diam non fringilla.</p>
                        <p>Powered by <a href="resources/images/logo.png" target="_blank">w3.css</a></p>
                    </div>

                    <div class="w3-third">
                        <h3>BLOG POSTS</h3>
                        <ul class="w3-ul w3-hoverable">
                            <li class="w3-padding-16">
                                <img src="resources/images/logo.png" class="w3-left w3-margin-right" style="width:50px">
                                <span class="w3-large">Lorem</span><br>
                                <span>Sed mattis nunc</span>
                            </li>
                            <li class="w3-padding-16">
                                <img src="resources/images/trip1.jpg" class="w3-left w3-margin-right" style="width:50px">
                                <span class="w3-large">Ipsum</span><br>
                                <span>Praes tinci sed</span>
                            </li> 
                        </ul>
                    </div>

                    <div class="w3-third">
                        <h3>POPULAR TAGS</h3>
                        <p>
                            <span class="w3-tag w3-black w3-margin-bottom">Travel</span> <span class="w3-tag w3-grey w3-small w3-margin-bottom">New York</span> <span class="w3-tag w3-grey w3-small w3-margin-bottom">London</span>
                            <span class="w3-tag w3-grey w3-small w3-margin-bottom">IKEA</span> <span class="w3-tag w3-grey w3-small w3-margin-bottom">NORWAY</span> <span class="w3-tag w3-grey w3-small w3-margin-bottom">DIY</span>
                            <span class="w3-tag w3-grey w3-small w3-margin-bottom">Ideas</span> <span class="w3-tag w3-grey w3-small w3-margin-bottom">Baby</span> <span class="w3-tag w3-grey w3-small w3-margin-bottom">Family</span>
                            <span class="w3-tag w3-grey w3-small w3-margin-bottom">News</span> <span class="w3-tag w3-grey w3-small w3-margin-bottom">Clothing</span> <span class="w3-tag w3-grey w3-small w3-margin-bottom">Shopping</span>
                            <span class="w3-tag w3-grey w3-small w3-margin-bottom">Sports</span> <span class="w3-tag w3-grey w3-small w3-margin-bottom">Games</span>
                        </p>
                    </div>

                </div>
            </footer>

            <div class="w3-black w3-center w3-padding-24">Powered by <a href="https://www.w3schools.com/w3css/default.asp" title="W3.CSS" target="_blank" class="w3-hover-opacity">w3.css</a></div>

            <!-- End page content -->
        </div>

        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
        <script src="//cdn.jsdelivr.net/npm/sweetalert2@11"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.9.4/Chart.js"></script>
        <script src="resources/js/alert.js"></script>
        <script src="resources/js/home.js"></script>
        <script src="resources/js/dashboard.js"></script>
        <script src="resources/js/linechart.js"></script>
        <script src="resources/js/doughnutchart.js"></script>
    </body>
</html>
