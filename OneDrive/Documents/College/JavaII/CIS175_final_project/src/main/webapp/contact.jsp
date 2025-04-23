<%-- 
    Document   : contact
    Created on : Mar 9, 2025, 1:11:40?PM
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
                        <a class="nav-link" href="about.jsp">About</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="adopt.jsp">Adopt</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link active" aria-current="page" href="contact.jsp">Contact</a>
                    </li>
                </ul>
            </div>
        </div>
    </nav>
    <div class="main">
    <h1>Contact Us</h1>
    <form action="adoption_center" method="post">
        <div class="mb-3">
            <div class="col-sm-6">
                <label for="InputEmail1" class="form-label">Email address</label>
                <input type="email" class="form-control" name="email" aria-describedby="emailHelp">
                <div id="emailHelp" class="form-text">We'll never share your email with anyone else.</div>
            </div>
        </div>
        <div class="mb-3">
            <div class="col-sm-6">
                <label for="exampleFormControlTextarea1" class="form-label">Share your ideas</label>
                <textarea class="form-control" name="textarea" rows="3"></textarea>
            </div>
        </div>
        <div class="mb-3 form-check">
            <input type="checkbox" class="form-check-input" name="apptcheck" value="yes">
            <label class="form-check-label" for="exampleCheck1">I'd like to book a visit</label>
        </div>
        <div class="row g-3 align-items-center">
            <div class="col-auto">
                <label for="inputdate" class="col-form-label">Date</label>
            </div>
            <div class="col-auto">
                <input type="date" name="inputdate" class="form-control">
            </div>
            <div class="col-auto">
                <label for="inputtime" class="col-form-label">Time</label>
            </div>
            <div class="col-auto">
                <input type="time" name="inputtime" class="form-control">
            </div>
        </div>
        <button type="submit" class="btn btn-primary" value="Submit">Submit</button>
    </form>
</section>
</div>
<%@include file="footer.jsp"%>
