<html>
<head>

  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
</head>
<body>
<div class="container">
    <div class="row">
        <div class="form_bg">
            <form action="loginprocess" method="post">
                 <h2 class="text-center">Login Page</h2>
                <br/>
                <div class="form-group">
                    <input type="text" class="form-control" name="username" placeholder="User id">
                </div><br>
                <div class="form-group">
                    <input type="password" class="form-control" name="password" placeholder="Password">
                </div>
                <br/>
                <div class="align-center">
                    <button type="submit" class="btn btn-default" id="login">Login</button>
                </div>
                <center>${message}</center>
            </form>
        </div>
    </div>
</div>
</body>
</html>