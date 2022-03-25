<%@ page import="java.util.List" %>
<%@ page import="java.util.ArrayList" %>
<%@page import="model.Customer" %>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
  <head>
    <title>$Title$</title>
  </head>
  <body>
  <%!
    List<Customer> customerList= new ArrayList<>();
    public void jspInit(){
      customerList= new ArrayList<>();
      customerList.add(new Customer("Nam","16/3/1995","Ha Noi","https://vcdn-thethao.vnecdn.net/2021/12/13/2-jpeg-1639413745-3590-1639413816.jpg"));
      customerList.add(new Customer("Thanh","16/6/1997","Ha Noi","https://iweb.tatthanh.com.vn/pic/12/news/images/4(3).jpg"));
      customerList.add(new Customer("Tuan","18/10/1999","Bac Giang","https://cdnimg.vietnamplus.vn/uploaded/mtpyelagtpy/2018_07_11/ronaldo_11_1.jpg"));
      customerList.add(new Customer("Tung","28/2/1992","Thanh Hoa","https://photo-cms-sggp.zadn.vn/Uploaded/2022/evofzyresfj/2021_08_31/creatividad-sobre-el-fichaje-de-cristiano-ronaldo-por-el-manchester-united-besoccer1_aoib.jpg"));
    }
  %>
  <%
    request.setAttribute("DSKH",customerList);
  %>
  <table>
    <c:if test="${DSKH.size()>=4}">
      <p>Co nhieu khach hang can cham soc</p>
    </c:if>
    <tr>
      <td>Name</td>
      <td>Date Of Birth</td>
      <td>Address</td>
      <td>Image</td>
    </tr>
    <c:forEach var="c" items="${DSKH}">
      <tr>
        <td>${c.name}</td>
        <td>${c.dateOfBirth}</td>
        <td>${c.address}</td>
        <td><img src="${c.image}" width="120" height="120"></td>
      </tr>
    </c:forEach>
  </table>
  </body>
</html>
