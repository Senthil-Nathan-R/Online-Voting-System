<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="./CSS/Signup.css">
</head>
<body>
    <section class="Register-section">
        <div class="form-section signin" id="forget">        
        <div id="signin-form">
            <form action="Signup" method="post" id="signin-form-element">

                <h1>Sign In</h1>
                <input type="text" name="username" placeholder="Username" id="username" required><br>
                <input type="password" name="password" placeholder="Password" id="password" required><br>
                <button type="button"  id="forget-btn">Forgot Password?</button><br>
                <button type="submit" class="btn">Submit</button>
        
            </form>
        </div>

        <div id="signin-content">
            <h1>Hello, User!</h1>
            <p>If You Don't Have An Account</p>
            <a href="Register.jsp"><button type="submit" id="signup-btn">REGISTER</button></a> 
        </div>
        </div>
        
        <div class="form-section resetright" id="forgetback">
        <div id="reset-content">
             <h1>Hello, User!</h1>
                <p>If You Don't Have An Account or You Want To Create a New Account</p>
                <a href="Register.jsp"><button type="submit" id="signup-btn">REGISTER</button></a>  
        </div>
        
        <div id="reset-form">
            <form action="Reset" method="post" id="reset-form-element">

                <h1>Reset Password</h1>
                <input type="email" name="email" placeholder="Email" id="email" required><br>
                <input type="password" name="password" placeholder="New Password" id="password" required><br>
                <input type="password" name="cpassword" placeholder="Confirm Password" id="cpassword" required><br>
                <button type="button" id="reset-btn">Back To Signin !</button><br>
                <button type="submit" id="submit" >Submit</button>
        
            </form>
        </div>
        </div>
    </section> 
	
	<script type="text/javascript" src="./JS/Signup.js"></script>
	
</body>
</html>