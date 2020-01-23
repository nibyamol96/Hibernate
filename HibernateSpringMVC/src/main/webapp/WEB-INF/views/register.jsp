<html>
<head>
 <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>

<style type="text/css">
@media (max-width: 768px) {
    #social-sign-in .icon-5x {
        font-size: 7em;
    }
}
@media (max-width: 480px) {
    #social-sign-in .icon-5x {
        font-size: 4.5em;
    }
}
@media (min-width: 1199px) {
    #social-sign-in .icon-5x {
        font-size: 7em;
    }
}
.well h3 {
    padding-top: 0;
    margin-top: 0;
    margin-bottom: 20px;
}
#signupForm .input-group {
    margin-bottom: 20px;
}

/* get font-awesome to work with BS3 */
.input-group-addon .icon-2x {
    width: 28px;
    min-width: 28px;
    display: inline-block;
}

.inline-block > li {
    position: relative;
    display: inline-block;
    margin: 0 10px 10px 0;
}

/* Why doesn't OR work? Tested with Chrome 29, FF 24 or IE 11 */
@media (max-width: 480px), (min-width: 1199px) { 
    #social-sign-in .icon-5x {
        font-size: 7em;
    }
}

[class^="icon-"]:before, [class*=" icon-"]:before {
    text-decoration: none;
}

.checkbox-inline, .radio-inline {
    margin-right: 28px;
    font-size: 16px;
}




</style>

</head>
<body>

<div id="contentContainer" class="container">
  <div class="row">
    <div id="realContent" class="col-xs-12">
      <div class="row">
        <div class="col-lg-10 col-lg-offset-1 col-md-10 col-md-offset-1 col-xs-12 col-sm-offset-0">
          <h1>Sign Up</h1>
        </div>
      </div>
      <div class="row">
        <section class="col-lg-10 col-lg-offset-1 col-md-10 col-md-offset-1 col-xs-12 col-sm-offset-0">
          <div class="well well-lg">
            <div class="row">
              <div class="col-sm-6 col-xs-12">
                <div class="row">
                  <div class="col-xs-12">
                    <h3>Welcome</h3></div>
                </div>
                <div class="row">
                  <!-- Instructions -->
                  <div class="col-xs-12">
                    <p class="lead">Register now for <span class="text-success">FREE</span></p>
                    
                  </div>
                </div>
              </div>
              <!-- Registration Form -->
              <div class="col-sm-6 col-xs-12">
                <div class="row">
                  <div class="col-xs-12">
                    <form id="signupForm" method="post" accept-charset="UTF-8" validate>
                      <div class="input-group">
                        <span class="input-group-addon"><i class="fa fa-user-secret icon-2x"></i></i></span>
                        <input id="name" class="form-control input-lg" placeholder="User Name" maxlength="100" type="text" name="username">
                      </div>
                      <div class="input-group">
                        <span class="input-group-addon"><i class="icon-user icon-2x"></i></span>
                        <input id="handle" class="form-control input-lg" placeholder="Name" maxlength="100" type="text" name="name">
                      </div>
                      <div class="input-group">
                        <span class="input-group-addon"><i class="icon-envelope icon-2x"></i></span>
                        <input id="email" class="form-control input-lg" placeholder="Address" maxlength="100" type="text" name="address">
                      </div>
                      <div class="input-group">
                        <span class="input-group-addon"><i class="icon-asterisk icon-2x"></i></span>
                        <input id="password" class="form-control input-lg" placeholder="Password" maxlength="60" type="password" name="password">
                      </div>
                     
                      <div class="form-group">
                        <div class="g-recaptcha" data-sitekey="6LdJRxETAAAAABZT0MUNO1r5at_-JuSGeAPTqIM6"></div>
                      </div>
                      <div class="form-group">
                        <button type="submit" id="btn-signup" class="btn btn-block btn-primary btn-lg">Sign Up</button>
                      </div>
                    </form>
                    <div class="form-group">
                      <div class="topCushion">Already a member? <a href="#">Login</a></div>
                    </div>
                  </div>
                  <!-- /.col-xs-12 -->
                </div>
                <!-- /.row -->
              </div>
              <!-- /.col-sm-6 col-xs-12 -->
            </div>
            <!-- /.row -->
          </div>
          <!-- /.well well-lg -->
        </section>
        <!-- /.col-lg-10 col-lg-offset-1 col-md-10 col-md-offset-1 col-xs-12 col-sm-offset-0 -->
      </div>
      <!-- /.row -->
    </div>
    <!-- /#realContent -->
  </div>
  <!-- /.row -->
</div>
<!-- /#contentContainer -->


</div>
</div>
</body>
</html>