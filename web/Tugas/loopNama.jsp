<%-- 
    Document   : loopNama
    Created on : May 23, 2017, 10:10:53 AM
    Author     : Aslam Maududy
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            int j = 0;
            for (int i = 0; i < 100; i++) {
                if (j == 7) {
                    j = 0;
                }
                out.println("<font size='" + j + "'> Aslam Maududy</font><br>");
                j++;
            }
        %>
    </body>
</html>
