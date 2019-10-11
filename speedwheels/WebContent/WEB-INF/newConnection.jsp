<%-- 
    Document   : newConnection
    Created on : Oct 10, 2019, 8:44:55 PM
    Author     : shilpa
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="styles.css">
        <jsp:include page="header.jsp"></jsp:include>
        <jsp:include page="navigation.jsp"></jsp:include>
    </head>
    <body>
            <div class="fullHeight">
                <h3>Start a New Connection</h3>
                <form action="LoginController?action=register" method="post">
                    <div class="formBox">
                        <div class="inputLabel"><label >Name: </label></div>
                <input type="text" name="name" class="inputBox"/><br>
                    </div>
                <div class="formBox">
                        <div class="inputLabel"><label >Description: </label></div>
                <input type="text" name="description" class="inputBox"/><br>
                    </div>
                    <div class="formBox">
                        <div class="inputLabel"><label >Category: </label></div>
                        <select name="category" class="inputBox">
                            <option value="two wheeler">Two Wheeler</option>
                            <option value="four wheeler">Four Wheeler</option>
                        </select></><br>
                    </div>
                    <div class="formBox"> 
                   <div class="inputLabel"><label >Location: </label></div>
                <input type="text" name="location" class="inputBox"/><br>
               </div>
            <div class="formBox">
                <div class="inputLabel"><label >Date: </label></div>
                
                <input type="datetime-local" name="date" class="inputBox"/><br>
            </div>
              <div class="formBox" hidden>
                        <div class="inputLabel"><label >Hosted by </label></div>
                <input type="text" name="hostedBy" class="inputBox" value = "John"/><br>
                    </div>
                    <div class = "formBox"><input type="submit" value="Create Connection"/>  </div>   
                </form>
        </div>
    <jsp:include page="footer.jsp"></jsp:include> 
    </body>
</html>
