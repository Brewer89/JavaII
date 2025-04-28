<%-- 
    Document   : admin
    Created on : Apr 27, 2025, 8:48:17?PM
    Author     : ijc19
--%>

<%@include file="header.jsp"%>
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
          <a class="nav-link active" aria-current="page" href="about.jsp">About</a>
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
    <body>
        <h1>Add an animal</h1>
        <form action="adoption_center" method="post">
            <input type="hidden" name="action" value="add">
        <div class="mb-3">
                <div class="col-sm-6">
                    <label for="inputtype" class="form-label">Animal Type</label>
                    <input type="type" class="form-control" name="type">
                </div>
            </div>
            <div class="mb-3">
                <div class="col-sm-6">
                    <label for="inputweight" class="form-label">Weight</label>
                    <input type="weight" class="form-control" name="weight">
                </div>
            </div>
            <div class="mb-3">
                <div class="col-sm-6">
                    <label for="inpucolor" class="form-label">Color</label>
                    <input type="animalColor" class="form-control" name="animalColor">
                </div>
            </div>
            <div class="mb-3">
                <div class="col-sm-6">
                    <label for="inputimage" class="form-label">Image url</label>
                    <input type="image_url" class="form-control" name="image_url">
                </div>
            </div>
             <button type="submit" class="btn btn-primary" value="Submit">Submit</button>
        </form>
    </body>
</html>
