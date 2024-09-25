<!DOCTYPE html>
<html>

<head>
  <title>GadgetFix</title>
  <link rel="icon" href="resources/logo.png" />

  <meta name="viewport" content="width=device-width, initial-scale=1">

  <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js"></script>
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css" />

  <!-- font-awesome  -->
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.0/css/all.min.css">
  <script src="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.0/js/all.min.js"></script>

  <!-- Lightbox CSS & Script -->
  <script src="resources/lightbox/ekko-lightbox.js"></script>
  <link rel="stylesheet" href="resources/lightbox/ekko-lightbox.css"/>
  <!-- Lightbox END -->

  <!-- AOS css and JS -->
  <link rel="stylesheet" href="resources/aos/aos.css">
  <script src="resources/aos/aos.js"></script>
  <!-- AOS css and JS END-->

  <!-- custom css -->
  <link rel="stylesheet" href="resources/custom.css">

  <meta name="author" content="Rahul Chauhan" />
  <meta name="description" content="This is a website for Gadget Repaire Service." />
  <meta name="keywords" content="" />
  <style>
  /* CSS Reset */
* {
    margin: 0;
    padding: 0;
    box-sizing: border-box;
}

/* Ensure the body takes the full height of the viewport */
html, body {
    height: 100%;
    margin: 0;
}

/* Wrapper for the entire content */
.wrapper {
    display: flex;
    flex-direction: column;
    min-height: 100vh;
}

/* Content should take up all available space */
.content {
    flex: 1;
}

/* Footer styling */
footer {
    background-color: #343a40; /* Dark background */
    color: white; /* Text color */
    text-align: center; /* Center text */
    padding: 10px; /* Padding */
    position: fixed; /* Fixed position */
    width: 100%; /* Full width */
    bottom: 0; /* Stick to the bottom */
    left: 0; /* Align to the left */
}
  
  </style>
  
</head>

<body>
	<%
		String msg=(String)session.getAttribute("msg");
		if(msg!=null && msg.contains("Success")){
	%>
		<div class="alert alert-success text-center" role="alert">
	  	 	<%= msg %>
	    </div>	
	<%		  
			session.setAttribute("msg", null);
		}else if(msg!=null){
	%>
		<div class="alert alert-danger text-center" role="alert">
	  	 	<%= msg %>
	    </div>	
	<%		  
			session.setAttribute("msg", null);
		}
	%>
  <section class="bg-dark" id="contact">
      <a id="contact-mail" href="mailto:shiksharajput8851@gmail.com"><i class="fa-solid fa-envelope"></i> shiksharajput8851@gmail.com</a>
      <a id="contact-phone" href="tel:8810218044"><i class="fa-solid fa-mobile-screen-button"></i> <strong>8810218044</strong></a>
  </section>
  <nav class="navbar navbar-expand-sm bg-light">
      <a href="index.jsp" id="logo" class="navbar-brand">
        <img src="resources/logo.png" alt="">Gadget<span>Fix</span>
      </a>
      <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#my-navbar"><i class="fa-solid fa-bars"></i></button>
      <div class="collapse navbar-collapse" id="my-navbar">
          <ul class="navbar-nav ml-auto">
          <!-- <ul class="navbar-nav mr-auto"> -->
          <!-- <ul class="navbar-nav mx-auto"> -->
              <li>
                 <a href="index.jsp">Home</a>
              </li>
              <li>
                 <a href="User.jsp">User</a>
              </li>
              <li>
                 <a href="" data-toggle="modal" data-target="#admin-Modal">Admin</a>
              </li>
              <li>
                 <a href="" data-toggle="modal" data-target="#repair-expert-Modal">RepairExpert</a>
              </li>
              <li>
                <a href="" data-toggle="modal" data-target="#my-Modal">Contact</a>
             </li>
          </ul>
      </div>
  </nav>
  <div class="wrapper" >
  <div class="content">
  <div class="row p-4" >
  		<div class="col-sm">
  			<div class="bg-secondary p-4">
	  			<h5 class="text-white">User Sign In</h5>
	  			<form method="post" action="UserSignIn">
                		<input name="email" class="form-control p-2 my-2" type="email" maxlength="100" placeholder="User Email" required />
                		<input name="password" class="form-control p-2 my-2" type="password" maxlength="20" placeholder="Password" required />
                		<button class="btn btn-success my-2">Sign In</button>
            		</form>
  			</div>
  		</div>
  		<div class="col-sm">
  			<div class="bg-info p-4">
	  			<h5>User Sign Up</h5>
	  			<form method="post" action="UserSignUp">
                		<input name="email" class="form-control p-2 my-2" type="email" maxlength="100" placeholder="Email" required />
                		<input name="name" class="form-control p-2 my-2" type="text" maxlength="20" pattern="[a-zA-Z ]+" placeholder="Name" required />
                		<input name="phone" class="form-control p-2 my-2" type="tel" maxlength="10" minlength="10" pattern="[0-9]+" placeholder="Phone" required />
                		<input name="password" class="form-control p-2 my-2" type="password" maxlength="20" placeholder="Password" required />
                		<button class="btn btn-success my-2">Sign Up</button>
            		</form>
            		</div>
            		</div>
  			</div>
  		</div>
  </div>
  
  <footer class="bg-dark p-2 text-white text-center">
      <p>&copy; Rights Reserved.</p>
  </footer>
  <a id="top-button"><i class="fa-solid fa-circle-up p-3"></i></a>

  <!-- Modal -->
  <div class="modal fade" id="my-Modal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog">
      <div class="modal-content">
        <div class="modal-header">
          <h5 class="modal-title" id="exampleModalLabel">Get In Touch!</h5>
          <button type="button" class="close" data-dismiss="modal" aria-label="Close">
            <span aria-hidden="true">&times;</span>
          </button>
        </div>
        <div class="modal-body">
            <form name="google-sheet">
                <input name="Name" class="form-control p-4 my-2" type="text" maxlength="20" pattern="[a-zA-Z ]+" placeholder="Your Name" required />
                <input name="Phone" class="form-control p-4 my-2" type="tel" maxlength="10" minlength="10" pattern="[0-9]+" placeholder="Your Phone" required />
                <button class="btn btn-success my-2">Submit</button>
            </form>
        </div>
      </div>
    </div>
  </div>
  <div class="modal fade" id="admin-Modal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog">
      <div class="modal-content">
        <div class="modal-header bg-primary text-white">
          <h5 class="modal-title" id="exampleModalLabel">AdminLogin!</h5>
          <button type="button" class="close" data-dismiss="modal" aria-label="Close">
            <span aria-hidden="true">&times;</span>
          </button>
        </div>
        <div class="modal-body">
            <form method="post" action="AdminLogin">
                <input name="id" class="form-control p-4 my-2" type="text" maxlength="20"  placeholder="Admin ID" required />
                <input name="password" class="form-control p-4 my-2" type="password" maxlength="20" placeholder="Admin Password" required />
                <button class="btn btn-primary my-2">Submit</button>
            </form>
        </div>
      </div>
    </div>
  </div>
</body>
<script>
    AOS.init();
    //script for scroll to top
    $("#top-button").click(function () {
        $("html, body").animate({scrollTop: 0}, 1000);
    });
    //script for light box
    $(document).on('click', '[data-toggle="lightbox"]', function(event) {
        event.preventDefault();
        $(this).ekkoLightbox();
    });
</script>
</html>