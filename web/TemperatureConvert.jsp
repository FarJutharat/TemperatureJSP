<%-- 
    Document   : TemperatureConvert
    Created on : Nov 1, 2021, 7:08:49 PM
    Author     : macintoch
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Convert Page</title>
    </head>
    <body>
         <%
            String message;
            if (request.getParameter("convertF") != null) {
            String C = request.getParameter("temp");
            Double convertToF = (Double.parseDouble(C)*(9/5))+32;
            message = "To Farenthide is "+convertToF;
                out.print(message);
            }
            
            if (request.getParameter("convertC") != null) {
            String F = request.getParameter("temp");
            Double convertToC = (Double.parseDouble(F)-32)*(0.5);
            message = "To Celcius is "+convertToC;
                out.print(message);
            }
            
        %>
    </body>
</html>
