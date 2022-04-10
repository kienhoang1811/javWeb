<%-- 
    Document   : signin
    Created on : Apr 10, 2022, 5:43:14 PM
    Author     : Kien Mason
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <style type="text/css">
            <%@ include file="/WEB-INF/css/signin.css"%>
        </style>
    </head>
    <body>
         <div class="wrapper">
            <form class="signin_form" onsubmit="signin()">
                <h1>Signin</h1>
                <input type="text" name="email" placeholder="Email:"/>
                <input type="password" name="password" placeholder="Password:" />
                <input type="text" name="firstname" placeholder="Fistname:"/>
                <input type="text" name="lastname" placeholder="Lastname:" />
                <button type="submit">Signin</button>
            </form>
        </div>
        
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
        <script>
                const signin = async  () => {
                    var res = await $.get(`http://localhost:8080/SpringDemo/api/test`)
                    console.log(res)
                }
                signin()
        </script>
    </body>
</html>
