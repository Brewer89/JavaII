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
                    <li class="nav-item">
                        <a class="nav-link" href="admin.jsp">Log In</a>
                    </li>
                </ul>
            </div>
        </div>
    </nav>
    <div class="content">
        <h1>Find your next furry friend here</h1>
        <p>We accept any and all breeds of cats and dogs for adoption. We have a wide range of options 
            available if you are looking to adopt a new friend. We get new animals all the time so if you 
            don?t see something now always check back in the future as you may find your next friend before you know it. </p>
        <h1>The Adoption Process</h1>
        <p>Adoptions must be done in person to make sure you and the animals are compatible.</p>
        <p>The adoption process will take about 1 hour.</p>
        <p>Bring some form a valid ID, adopters must be 18+.</p>
        <p>We recommend all animals and children come along to make sure everyone gets along nicely before bringing home your new friend.</p>
        <p>Bring a leash and carrier for a safe trip home. We have a selection in the store available for purchase.</p>
        <p>We have the right to deny any adoption for any reason.</p>
        <h1>Adoption Fees</h1>
        <b>DOG under 6 months old | $250</b><br>
        <b>DOG | $200</b><br>
        <b>CAT | $125</b><br>

        <a href="adoption_center?action=manage">See all animals</a><br>
        <a href="adoption_center?action=dogs">See all dogs</a><br>
        <a href="adoption_center?action=cats">See all cats</a>

        <h1>Animals available for adoption </h1>
        <table>
            <tr>
                <th>Animal type</th>
                <th>Color</th>
                <th>Weight</th>
                <th>Picture</th>
            </tr>
            <c:forEach var="allAnimals" items="${allAnimals}">
                <tr>
                    <td>${allAnimals.type}</td>
                    <td>${allAnimals.color}</td>
                    <td>${allAnimals.weight}</td>
                    <td><img src=${allAnimals.image} width="200px" height="200px"/></td>
                </tr>
            </c:forEach>
        </table>
    </div>
</section>
<%@include file="footer.jsp"%>
