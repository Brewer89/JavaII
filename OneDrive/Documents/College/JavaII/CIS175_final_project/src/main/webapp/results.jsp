<%-- 
    Document   : results
    Created on : Mar 16, 2025, 6:37:39?PM
    Author     : ijc19
--%>

<%@include file="header.jsp"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
          <a class="nav-link" aria-current="page" href="about.jsp">About</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="adopt.jsp">Adopt</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="contact.jsp">Contact</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="admin.jsp">Log In</a>
        </li>
      </ul>
    </div>
  </div>
</nav>
<div class="content"
<h1>Thank you</h1>
<p>We appreciate your feedback</p>
<c:choose>
    <c:when test="${appt != null}">
        <p>Thank you for booking an appointment to see us in person. Look for an email from booking@adoption.org to the email you entered ${email}</p>
        <p>Your appointment details are Date: ${date} | Time: ${time}</p>
    </c:when>
    <c:otherwise>
        <p>If you want to book an appointment to view our animals in person be sure to do so <a aria-current="page" href="contact.jsp">here</a>.</p>
    </c:otherwise>
</c:choose>
</div>

<%@include file="footer.jsp"%>
