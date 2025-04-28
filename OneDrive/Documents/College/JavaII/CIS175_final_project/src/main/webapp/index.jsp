<%-- 
    Document   : index
    Created on : Mar 9, 2025, 12:48:15?PM
    Author     : ijc19
--%>

<%@include file="header.jsp"%>
<section>
    <nav class="navbar navbar-expand-md bg-body-tertiary">
        <div class="container-fluid">
            <a class="navbar-brand" href="index.jsp">Adoption</a>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarNav">
                <ul class="navbar-nav">
                    <li class="nav-item">
                        <a class="nav-link active" aria-current="page" href="index.jsp">Home</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="about.jsp">About</a>
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
    
            <div class="col-centered">
                <div class="card text-bg-dark">
                    <img src="images/pets-main.jpg" class="img-fluid" alt="picture of cats and dogs sitting">
                    <div class="card-img-overlay">
                        <h1 class="display-1 center-text main-text">Pet Adoption</h1>
                        <p class="h3 center-text">Find your next furry buddy here.</p>
                    </div>
                </div>
            </div>
     
</section>
<%@include file="footer.jsp"%>