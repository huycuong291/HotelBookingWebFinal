<!DOCTYPE html>
<html>
<head>
	<title>Login & Sign Up</title>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" type="text/css" href="css/login-style.css">
  <link href="https://fonts.googleapis.com/css?family=Nunito:400,600,700,800&display=swap" rel="stylesheet">
</head>
<body>
  <div class="cont">
    <div class="form sign-in">
    <form action="login" method="post">
      <input type="hidden" name="hotelId" value="${hotelId}">
      <input type="hidden" name="pageBefore" value="${pageBefore}">
      <h2>Sign In</h2>
      <label>
        <span>Email Address</span>
        <input type="email" name="email" id="email" required>
      </label>
      <label>
        <span>Password</span>
        <input type="password" name="password" id ="password" required>
      </label>
      <p style="color: red; margin-top: 25px; margin-bottom: -20px; display: flex; justify-content: center;">${message}</p>
      <button class="submit" type="submit">Sign In</button>
	</form>
      <p class="forgot-pass">Forgot Password ?</p>

      <div class="social-media">
        <ul>
          <li><img src="./img/facebook.png"></li>
          <li><img src="./img/twitter.png"></li>
          <li><img src="./img/linkedin.png"></li>
          <li><img src="./img/instagram.png"></li>
        </ul>
      </div>
    </div>

    <div class="sub-cont">
      <div class="img">
        <div class="img-text m-up">
          <h2>New here?</h2>
          <p>Sign up and discover great amount of new opportunities!</p>
        </div>
        <div class="img-text m-in">
          <h2>One of us?</h2>
          <p>If you already has an account, just sign in. We've missed you!</p>
        </div>
        <div class="img-btn">
          <span class="m-up">Sign Up</span>
          <span class="m-in">Sign In</span>
        </div>
      </div>
      <div class="form sign-up">
      	<form action="register" method="post">
      		<input type="hidden" name="action" value="registeruser">
      		<h2>Sign Up</h2>
        	<label>
	       		<span>Email Address</span>
	       		<input type="email" name="registerEmail" required>
        	</label>
	        <label>
				<span>Password</span>
				<input type="password" name="registerPass" required>
	        </label>
	        <p style="color: red; margin-top: 25px; margin-bottom: -20px; display: flex; justify-content: center;">${emailExist_message}</p>
        	<button type="submit" class="submit">Sign Up Now</button>
      	</form>
      </div>
    </div>
  </div>
<script>
	document.querySelector('.img-btn').addEventListener('click', function()
	    {
	        document.querySelector('.cont').classList.toggle('s-signup')
	    }
	);
</script>
</body>
</html>