<!-- Navbar Start -->
<nav class="navbar navbar-expand-lg bg-black navbar-dark shadow sticky-top p-0">
    <a href="index.php" class="navbar-brand d-flex align-items-center text-center py-0 px-4 px-lg-5">
        <img src="img/download.gif" style="width:33px;" alt="">
		<h1 class="m-0 text-white">brouva</h1>
		  <script src="js/registerUser.js"></script>
		  <script src="js/tilt.jquery.min.js"></script>
		  <script src="js/signinModal.js"></script>
		  <link href="css/simpleGridTemplate.css" rel="stylesheet" type="text/css">
		  <link href="css/Animate.css" rel="stylesheet" type="text/css">
		  <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.3.1/css/all.css" integrity="sha384-mzrmE5qonljUremFsqc01SB46JvROS7bZs3IO2EmfFsd15uHvIt+Y8vEf7N7fWAU" crossorigin="anonymous">
  
  <link href="css/Animate.css" rel="stylesheet" type="text/css">
  <link href="css/animate.min.css" rel="stylesheet" type="text/css">
  
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  
    </a>
    <button type="button" class="navbar-toggler me-4" data-bs-toggle="collapse" data-bs-target="#navbarCollapse">
        <span class="navbar-toggler-icon"></span>
		
    </button>
    <div class="collapse navbar-collapse" id="navbarCollapse">
        <div class="navbar-nav ms-auto p-4 p-lg-0">
            <a href="index.php" class="btn btn">Home</a>
            <a href="index.php#category" class="btn btn">Category</a>
            <a href="index.php#about" class="btn btn">About</a>
            <a href="contact.php" class="btn btn">Contact</a> 
			<a href="blog-index.php" class="btn btn">blog</a>
			<li><a id="loginAnchor" class="btn btn" href="#" data-toggle="modal" data-target="#myEmployerModal">
  SIGN IN 
</a></li>';
        </div>
        <?php
        if (session_status() == PHP_SESSION_NONE) {
            session_start();
        }
        if (isset($_SESSION['login_admin'])) {
            $myusername = $_SESSION['login_admin'];
            echo '<a href="adminAccount.php" class="btn btn-primary rounded-0 py-4 px-lg-5 d-none d-lg-block">VIEW ACCOUNT<i class="fa fa-arrow-right ms-3"></i></a>';
        } elseif (isset($_SESSION['login_user'])) {
            $myusername = $_SESSION['login_user'];
            echo '<a href="jobs.php" class="btn btn-primary rounded-0 py-4 px-lg-5 d-none d-lg-block">VIEW JOBS<i class="fa fa-arrow-right ms-3"></i></a>';
			 echo '<a href="seekerAccount.php" class="btn btn-primary rounded-0 py-4 px-lg-5 d-none d-lg-block">myprofile<i ></i></a>';
        } else {
            echo '<a href="jobs.php" class="btn btn-primary rounded-0 py-4 px-lg-5 d-none d-lg-block">GO TO PORTAL<i class="fa fa-arrow-right ms-3"></i></a>';
        }dropdown-toggle
		?>
		
		<!-- Translation Code here -->
					<span>
					    <div class="translate" id="google_translate_element"></div>

                            <script type="text/javascript">
                                function googleTranslateElementInit() {  new google.translate.TranslateElement({pageLanguage: 'en'}, 'google_translate_element');}
                            </script>
                            <script class="btn btn" type="text/javascript" src="//translate.google.com/translate_a/element.js?cb=googleTranslateElementInit"></script>
					</span>
					<!-- Translation Code End here -->
    </div>
</nav>
<!-- Navbar End -->