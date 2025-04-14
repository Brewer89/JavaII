<%-- 
    Document   : adopt
    Created on : Mar 9, 2025, 1:11:07?PM
    Author     : ijc19
--%>

<%@include file="header.jsp"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<section>
    <nav class="navbar navbar-expand-lg bg-body-tertiary">
  <div class="container-fluid">
    <a class="navbar-brand" href="index.jsp">Adoption</a>
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarNav">
      <ul class="navbar-nav">
        <li class="nav-item">
          <a class="nav-link" href="index.jsp">Home</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="about.jsp">About</a>
        </li>
        <li class="nav-item">
          <a class="nav-link active" aria-current="page" href="adopt.jsp">Adopt</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="contact.jsp">Contact</a>
        </li>
      </ul>
    </div>
  </div>
</nav>
        <h1>Hello World!</h1>
        <a href="adoption_center?action=manage">See all animals</a>
        <h1>Animals available for adoption </h1>
    <table>
        <tr>
            <th></th>
            <th></th>
            <th></th>
        </tr>
        <c:forEach var="allAnimals" items="${allAnimals}">
            <tr>
                <td>${allAnimals.type}</td>
                <td>${allAnimals.color}</td>
                <td>${allAnimals.weight}</td>
                <!--td>&nbsp;</td>
                <td>
                    <form action="goldenoaks" method="post">
                        <input type="hidden" name="action" value="doCheckin"/>
                        <input type="hidden" name="checkoutNumber"
                               value="${checkout.checkoutNumber}"/>
                        <input type="submit" value="Check in"/>
                    </form>
                </td-->
            </tr>
        </c:forEach>
    </table>
</section>
<%@include file="footer.jsp"%>
