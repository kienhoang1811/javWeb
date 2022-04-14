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
    </head>

    <body class="w3-light-grey w3-content" style="max-width:1600px">

        <!-- Sidebar/menu -->
        <nav class="w3-sidebar w3-collapse w3-white w3-animate-left" style="z-index:3;width:300px;" id="mySidebar"><br>
            <div class="w3-container">
                <a href="#" onclick="w3_close()" class="w3-hide-large w3-right w3-jumbo w3-padding w3-hover-grey" title="close menu">
                    <i class="fa fa-remove"></i>
                </a>
                <img src="resources/images/logo.png" style="width:45%;" class="w3-round"><br><br>
                <h4><b>Traveloka</b></h4>
                <p class="w3-text-grey" id="account_name">Drawer</p>
            </div>
            <div class="w3-bar-block">
                <a href="#portfolio" onclick="w3_close()" class="w3-bar-item w3-button w3-padding w3-text-teal"><i class="fa fa-th-large fa-fw w3-margin-right"></i>All Trips</a> 
                <!--<a href="#portfolio" onclick="w3_close()" class="w3-bar-item w3-button w3-padding w3-text-teal"><i class="fa fa-th-large fa-fw w3-margin-right"></i>All Buses</a>--> 
                <a href="#ticket" onclick="w3_close()" class="w3-bar-item w3-button w3-padding w3-text-teal"><i class="fa fa-th-large fa-fw w3-margin-right"></i>My Tickets</a> 
                <a href="#about" onclick="w3_close()" class="w3-bar-item w3-button w3-padding"><i class="fa fa-user fa-fw w3-margin-right"></i>ABOUT US</a> 
                <a href="#contact" onclick="w3_close()" class="w3-bar-item w3-button w3-padding"><i class="fa fa-envelope fa-fw w3-margin-right"></i>CONTACT US</a>
            </div>
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
            <header id="portfolio">
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
                <h4 id="ticket"><b>My ticket</b></h4>
                <table class="table table-striped">
                    <thead>
                        <tr>
                            <th scope="col">ID Ticket</th>
                            <th scope="col">Price</th>
                            <th scope="col">Tine</th>
                            <th scope="col">Trip</th>
                        </tr>
                    </thead>
                    <tbody id="ticket_body">
                        <tr>
                            <th scope="row">1</th>
                            <td>Mark</td>
                            <td>Otto</td>
                            <td>@mdo</td>
                        </tr>
                        <tr>
                            <th scope="row">2</th>
                            <td>Jacob</td>
                            <td>Thornton</td>
                            <td>@fat</td>
                        </tr>
                        <tr>
                            <th scope="row">3</th>
                            <td>Larry</td>
                            <td>the Bird</td>
                            <td>@twitter</td>
                        </tr>
                    </tbody>
                </table>

            </div>


            <div class="w3-container w3-padding-large" style="margin-bottom:32px">
                <h4 id="about"><b>About Us</b></h4>
                <p>Just me, myself and I, exploring the universe of unknownment. I have a heart of love and an interest of lorem ipsum and mauris neque quam blog. I want to share my world with you. Praesent tincidunt sed tellus ut rutrum. Sed vitae justo condimentum, porta lectus vitae, ultricies congue gravida diam non fringilla. Praesent tincidunt sed tellus ut rutrum. Sed vitae justo condimentum, porta lectus vitae, ultricies congue gravida diam non fringilla.</p>
                <hr>


                <hr>

            </div>

            <!-- Contact Section -->
            <div class="w3-container w3-padding-large w3-grey">
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
            </div>

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
        <script src="resources/js/alert.js"></script>
        <script>
                            document.getElementById("account_name").innerHTML = `Hello ` + JSON.parse(localStorage.getItem("account")).firstname
//                    const account = JSON.parse(localStorage.getItem("account"));
////                    Alert({message: account.role})
//                    if (!account) window.location.href="/"  
//                    if (account.role!=="customer") window.location.href="http://localhost:8080/SpringDemo/dashboard"

                            // Script to open and close sidebar
                            function w3_open() {
                                document.getElementById("mySidebar").style.display = "block";
                                document.getElementById("myOverlay").style.display = "block";
                            }

                            function w3_close() {
                                document.getElementById("mySidebar").style.display = "none";
                                document.getElementById("myOverlay").style.display = "none";
                            }

                            const getTrips = async () => {
                                const res = await fetch('http://localhost:8080/SpringDemo/trips/all', {
                                    method: "GET",
//                        body: JSON.stringify(_data),
                                    headers: {"Content-type": "application/json;charset=UTF-8"}
                                })
                                const json = await res.json()

                                console.log(json)


                                $("#listTrip").html(``);

                                await $.each(json.data, (index, value) => {
                                    const {id, img, price, name, startLocation, endLocation} = value

                                    var html = `<div class='grid-item'>
                                            <img class='trip_img' src='resources/images/` + img + `' alt=` + name + `/>
                                            <div class='w3-container w3-white trip_frame'>
                                                <p class="trip_name">` + name + `</p>
                                                <p class="trip_start"><span class="trip_field">Start:</span> ` + startLocation + `</p>
                                                <p class="trip_end"><span class="trip_field">End:</span> ` + endLocation + `</p>
                                                <p class="trip_price"><span class="trip_field">Ticket price:</span> ` + price + `</p>
                                                <button class='trip_booking' onclick='booking(` + id + `)'>Book</button>
                                            </div>
                                        </div>`
                                    $("#listTrip").append(html);
                                });
                            }

                            getTrips()

                            const booking = async  (id) => {
                                const result = await Swal.fire({
                                    title: 'Are you sure?',
                                    text: "You won't be able to revert this!",
                                    icon: 'warning',
                                    showCancelButton: true,
                                    confirmButtonColor: '#3085d6',
                                    cancelButtonColor: '#d33',
                                    confirmButtonText: 'Yes'
                                })

                                if (!result.isConfirmed)
                                    return

                                Alert({success: "Deleled"})

                                const _data = {
                                    "price": 7000,
                                    "userId": 1,
                                    "busId": 1,
                                    "tripId": 1
                                }

                                const res = await fetch('http://localhost:8080/SpringDemo/orders/create', {
                                    method: "POST",
                                    body: JSON.stringify(_data),
                                    headers: {"Content-type": "application/json;charset=UTF-8"}
                                })
                                const json = await res.json()

                                console.log(json)


                            }

                            const search = async (event) => {
                                event.preventDefault()

                                const kw = document.getElementById("kw").value
                                console.log(${kw})
                                const res = await fetch(`http://localhost:8080/SpringDemo/trips/search/` + kw, {
                                    method: "GET",
//                        body: JSON.stringify(_data),
//                            headers: {"Content-type": "application/json;charset=UTF-8"}
                                })
                                const json = await res.json()

                                console.log(json)


                                $("#listTrip").html(``);

                                await $.each(json.data, (index, value) => {
                                    const {id, img, price, name, startLocation, endLocation} = value

                                    var html = `<div class='grid-item'>
                                            <img class='trip_img' src='resources/images/` + img + `' alt=` + name + `/>
                                            <div class='w3-container w3-white trip_frame'>
                                                <p class="trip_name">` + name + `</p>
                                                <p class="trip_start"><span class="trip_field">Start:</span> ` + startLocation + `</p>
                                                <p class="trip_end"><span class="trip_field">End:</span> ` + endLocation + `</p>
                                                <p class="trip_price"><span class="trip_field">Ticket price:</span> ` + price + `</p>
                                                <button class='trip_booking' onclick='booking(` + id + `)'>Book</button>
                                            </div>
                                        </div>`
                                    $("#listTrip").append(html);
                                });
                            }

        </script>

    </body>
</html>
