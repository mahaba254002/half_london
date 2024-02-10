<?php 
  include("connection.php");
  include("user_login.php");
  ?>
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">

  <!-- ===== CSS ===== -->
  <link rel="stylesheet" href="stylesS.css">

  <!-- ===== BOX ICONS ===== -->
  <link href='https://cdn.jsdelivr.net/npm/boxicons@2.0.5/css/boxicons.min.css' rel='stylesheet'>

  <title>login</title>
</head>

<body>
  <div class="login">
    <div class="bg" id="zoomImage"></div>
    <div class="login__forms">
      <form name="form" action="login.php" method="post" class="login__registre" id="login-in">
        <h1 class="login__title">Sign In</h1>

        <div class="login__box">
          <i class='bx bx-user login__icon'></i>
          <input type="text" placeholder="Username" class="login__input" name="CUSTOMER_USERNAME">
        </div>

        <div class="login__box">
          <i class='bx bx-lock-alt login__icon'></i>
          <input type="password" placeholder="Password" class="login__input" name="Customer_Password">
        </div>

        <a href="#" class="login__forgot">Forgot password?</a>
        <input type="submit" value="submit" name="submit" class="login__input">
        <!-- <a href="" class="login__button">Sign In</a> -->

        <div>
          <span class="login__account">Don't have an Account ?</span>
          <span class="login__signin" id="sign-up">Sign Up</span>
        </div>
      </form>

      <form action="Register.php" method="post" class="login__create none" id="login-up">
        <h1 class="login__title">Create Account</h1>

        <div class="login__box">
          <i class='bx bx-user login__icon'></i>
          <input type="text" placeholder="Username" class="login__input">
        </div>

        <div class="login__box">
          <i class='bx bx-at login__icon'></i>
          <input type="text" placeholder="Email" class="login__input">
        </div>

        <div class="login__box">
          <i class='bx bx-lock-alt login__icon'></i>
          <input type="password" placeholder="Password" class="login__input">
        </div>

        <a href="#" class="login__button">Sign Up</a>

        <div>
          <span class="login__account">Already have an Account ?</span>
          <span class="login__signup" id="sign-in">Sign In</span>
        </div>

        <div class="login__social">
          <a href="#" class="login__social-icon"><i class='bx bxl-facebook'></i></a>
          <a href="#" class="login__social-icon"><i class='bx bxl-twitter'></i></a>
          <a href="#" class="login__social-icon"><i class='bx bxl-google'></i></a>
        </div>
      </form>
    </div>

  </div>

  <!--===== MAIN JS =====-->
  <script src="main.js"></script>
</body>

</html>