<!DOCTYPE html>
<html lang="en">
    <head>
        <title>Speed Wheels - Spot the Difference</title>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="styles.css">
    </head>
    <body>
        
        <div class="fullHeight">
        <jsp:include page="header.jsp"></jsp:include>
        <jsp:include page="navigation.jsp"></jsp:include>
         <div class="row fullHeight">
            <div class="column1">
                <h2> <i>John's Connections</i></h2>
                <table >
                    <thead>
                        <tr>
                            <th>Connections</th>
                            <th>Category</th>
                            <th>Going?</th>
                            <th></th>
                            <th></th>
                           
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td>Cruiser Bikes</td>
                            <td>Two Wheelers</td>
                            <td>Yes</td>
                            <td><a href="connection.jsp">Update</a></td>
                            <td><a href="savedConnections.jsp">Delete</a></td>
                            
                        </tr>
                        <tr>
                            <td>Crossover</td>
                            <td>Four Wheelers</td>
                            <td>Maybe</td>
                            <td><a href="connection.jsp">Update</a></td>
                            <td><a href="savedConnections.jsp">Delete</a></td>
                            
                        </tr>
                    </tbody>
                </table>
            </div>
   
              </div>
        <jsp:include page="footer.jsp"></jsp:include>
            </div>
    </body>
</html>