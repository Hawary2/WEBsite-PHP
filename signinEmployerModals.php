<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<title>Modal SignIn/Registration</title>
<style type="text/css">
  .label-text {
    color: #fff;
    font-size: 15px;
    letter-spacing: 1px;
  }
</style>
<script src='https://www.google.com/recaptcha/api.js'></script>
<link rel="stylesheet" href="path/to/your/css/bootstrap.min.css">
<script src="path/to/your/js/jquery.min.js"></script>
<script src="path/to/your/js/bootstrap.min.js"></script>
</head>
<body>

<!-- SignIn Modal -->
<div class="modal fade" id="myEmployerModal" tabindex="-1" role="dialog" aria-labelledby="myEmployerModalLabel" style="background-image:url('img/siginBack.jpg'); background-size: cover; background-repeat: no-repeat;">
  <div class="modal-dialog" role="document">
    <div class="modal-content" style="background-image: url(img/bgbg.png); box-shadow: 10px 10px 20px #1e1e1e;">
      <div class="modal-header">
        <button id="empSignInCloseBtn" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
        <h4 class="modal-title" id="myEmployerModalLabel">Sign In</h4>
      </div>
      <div class="modal-body">
        <form class="cd-form" method="post" action="your_login_endpoint.php">
          <p class="fieldset">
            <label class="image-replace cd-email" for="email">E-mail</label>
            <input class="full-width has-padding has-border" id="email" name="email" type="email" placeholder="E-mail" required>
            <span class="cd-error-message">Error message here!</span>
          </p>
          <p class="fieldset">
            <label class="image-replace cd-password" for="password">Password</label>
            <input class="full-width has-padding has-border" id="password" name="password" type="password" placeholder="Password" required>
            <a href="#0" class="hide-password">Show</a>
            <div id="loginresult" style="display:none;">Error message here!</div>
          </p>
          <p class="fieldset">
            <input id="loginsubmit" class="full-width" type="submit" name="loginsubmit" value="Login">
          </p>
        </form>
        <p class="cd-form-bottom-message">
          <button id="regNowBtn" class="btn btn-default" data-toggle="modal" data-target="#empsignup" style="color: brown;">Register Now</button>
        </p>
        <button id="regEmpModalBtn" style="display:none;" data-toggle="modal" data-target="#empsignup"></button>
      </div>
      <div class="modal-footer"></div>
    </div>
  </div>
</div>

<!-- SignUp Modal -->
<div class="modal fade" id="empsignup" tabindex="-1" role="dialog" aria-labelledby="myEmployerModalLabel">
  <div class="modal-dialog" role="document">
    <div class="modal-content" style="background-image: url(img/bgbg.png); box-shadow: 10px 10px 20px #1e1e1e;">
      <div class="modal-header">
        <button id="signUpCloseBtn" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
        <h4 class="modal-title" id="myEmployerModalLabel">New Account</h4>
      </div>
      <div class="modal-body">
        <ul class="nav nav-tabs">
          <li class="active"><a data-toggle="tab" href="#employerRegister">Employer Register</a></li>
          <li><a data-toggle="tab" href="#jobseekerRegister">Jobseeker Register</a></li>
        </ul>
        <div class="tab-content">
          <div id="employerRegister" class="tab-pane fade in active">
            <h3>Register as Employer</h3>
            <form class="cd-form" method="post" action="registerEmployer.php" enctype="multipart/form-data">
              <p class="fieldset">
                <label class="label-text" for="name">Company Name</label>
                <input class="full-width has-padding has-border" id="name" name="name" type="text" placeholder="RFL, DATASOFT..." required>
              </p>
              <p class="fieldset">
                <label class="label-text" for="email">E-mail</label>
                <input class="full-width has-padding has-border" id="email" name="email" type="email" placeholder="example@gmail.com" required>
              </p>
              <p class="fieldset">
                <label class="label-text" for="password">Password</label>
                <input class="full-width has-padding has-border" id="password" name="password" type="password" placeholder="Password" required>
                <a href="#0" class="hide-password">Show</a>
              </p>
              <p class="fieldset">
                <label class="label-text" for="phone">Phone</label>
                <input class="full-width has-padding has-border" id="phone" name="phone" type="tel" placeholder="019122344555" required>
              </p>
              <p class="fieldset">
                <label class="label-text" for="address">Address</label>
                <input class="full-width has-padding has-border" id="address" name="address" type="text" placeholder="H#12, R#5, DIT Project, Dhaka-1212" required>
              </p>
              <p class="fieldset">
                <label class="label-text" for="logo">Company Logo</label>
                <input class="full-width has-padding has-border" id="logo" name="logo" type="file">
              </p>
              <p class="form-group">
                <button id="regsubmit" class="full-width has-padding btn-success" type="submit" style="padding:10px; box-shadow: 0px 0px 20px #156785;">Create Account</button>
              </p>
            </form>
          </div>
          <div id="jobseekerRegister" class="tab-pane fade">
            <h3>Register as Jobseeker</h3>
            <form class="cd-form" method="post" action="registerJobseeker.php" enctype="multipart/form-data">
              <p class="fieldset">
                <label class="label-text" for="name">Username</label>
                <input class="full-width has-padding has-border" id="name" name="name" type="text" placeholder="Username" required>
              </p>
              <p class="fieldset">
                <label class="label-text" for="email">E-mail</label>
                <input class="full-width has-padding has-border" id="email" name="email" type="email" placeholder="E-mail" required>
              </p>
              <p class="fieldset">
                <label class="label-text" for="password">Password</label>
                <input class="full-width has-padding has-border" id="password" name="password" type="password" placeholder="Password" required>
                <a href="#0" class="hide-password">Show</a>
              </p>
              <p class="fieldset">
                <label class="label-text" for="dob">Date of Birth</label>
                <input class="full-width has-padding has-border" id="dob" name="dob" type="date" placeholder="Date of Birth" required>
              </p>
              <p class="fieldset">
                <label class="label-text" for="skills">Skills</label>
                <input class="full-width has-padding has-border" id="skills" name="skills" type="text" placeholder="Skills" required>
              </p>
              <p class="fieldset">
                <label class="label-text" for="resume">Upload Resume</label>
                <input class="full-width has-padding has-border" id="resume" name="resume" type="file" required>
              </p>
              <p class="form-group">
                <button id="regsubmit" class="full-width has-padding btn-success" type="submit" style="padding:10px; box-shadow: 0px 0px 20px #156785;">Create Account</button>
              </p>
            </form>
          </div>
        </div>
      </div>
      <div class="modal-footer"></div>
    </div>
  </div>
</div>

<!-- Registration Success Modal -->
<div class="modal fade" id="regEmpSuccess" tabindex="-1" role="dialog" aria-labelledby="myEmployerModalLabel">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <button id="empSignInCloseBtn" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
        <h4 class="modal-title" id="myEmployerModalLabel">Registration Successful!</h4>
      </div>
      <div class="modal-body">
        <span>Login to continue</span>
        <div class="center-block">
          <button id="cancelEmpregModal" type="button" class="btn btn-default" data-dismiss="modal" style="width: 150px;">Done</button>
        </div>
      </div>
    </div>
  </div>
</div>

<script src="js/registerUser.js"></script>

</body>
</html>
