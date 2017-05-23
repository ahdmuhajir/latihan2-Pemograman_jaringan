<%-- 
    Document   : cumlaude
    Created on : May 23, 2017, 10:23:48 AM
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
        <form>
            <table>
                <tr>
                    <td>Nama</td>
                    <td>:</td>
                    <td><input type="text" name="nama"></td>
                </tr>
                <tr>
                    <td>NIM</td>
                    <td>:</td>
                    <td><input type="text" name="nim"></td>
                </tr>
                <tr>
                    <td>IPK</td>
                    <td>:</td>
                    <td><input type="text" name="ipk"></td>
                </tr>
                <tr>
                    <td>Masa Studi</td>
                    <td>:</td>
                    <td><input type="text" name="studi"></td>
                </tr>
                <tr>
                    <td><input type="submit" value="Hasil"></td>
                </tr>
            </table>
        </form>
        <%
            String sNama = request.getParameter("nama");
            String sNIM = request.getParameter("nim");
            String sIPK = request.getParameter("ipk");
            String sStudi = request.getParameter("studi");
            String Hasil = "";

            if (sIPK != null) {
                Double ipk = Double.valueOf(sIPK).doubleValue();
                Double studi = Double.valueOf(sStudi).doubleValue();

                if (ipk > 3.5 && studi < 4) {
                    Hasil = "Cumlaude";
                } else if (ipk > 3.5 && studi > 4) {
                    Hasil = "Tidak Cumlaude";
                } else if (ipk < 3.5 && studi < 4) {
                    Hasil = "Memuaskan";
                } else if (ipk < 3.5 && studi > 4) {
                    Hasil = "Biasa Saja";
                }
            }
        %>
        <table>
            <tr>
                <td>Nama</td>
                <td>:</td>
                <td> <%=sNama%> </td>
            </tr>
            <tr>
                <td>NIM</td>
                <td>:</td>
                <td><%=sNIM%></td>
            </tr>
            <tr>
                <td>IPK</td>
                <td>:</td>
                <td><%=sIPK%></td>
            </tr>
            <tr>
                <td>Masa Studi</td>
                <td>:</td>
                <td><%=sStudi%></td>
            </tr>
        </table>
        <%=Hasil%>
    </body>
</html>