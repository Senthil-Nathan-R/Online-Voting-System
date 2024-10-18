<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="./CSS/Register.css">
</head>
<body>
	<section id="Register">
	
		<div class="register-section">
			<div class="register-heading">
				<h1>REGISTERATION PAGE</h1>
			</div>
			<div class="back-btn">
				<a href="Home.jsp"><button>Go Back</button></a>
			</div>
		</div>
		
		<form action="Register" method="POST" class="register-form">
		<h3>Basic Information:</h3>
			<div class="form1">
			<div class="form-1">
<div>
			<!-- Full Name -->
			<label for="fullname">Full Name:</label> <input type="text"
				id="fullname" name="fullname" class="field1" placeholder="Enter Your Full Name"
				required>
</div><div>
			<!-- Date of Birth -->
			<label for="dob">Date of Birth:</label> <input type="date" id="dob"
				name="dob" required>
</div><div>
			<!-- Gender -->
			<label>Gender:</label> <input type="radio" id="male" name="gender"
				value="Male"> Male <input type="radio" id="female"
				name="gender" value="Female"> Female <input type="radio"
				id="other" name="gender" value="Other"> Other
</div>
			</div>
			<div class="form-2">
<div>
			<!-- Phone -->
			<label for="phone">Phone Number:</label> <input type="tel" id="phone"
				name="phone" placeholder="Enter Your Phone Number" class="field12" required>

			<!-- Email -->
			<label class="email" for="email">Email:</label> <input type="email" id="email"
				name="email" placeholder="Enter Your Email" class="field12" required>
			
</div>
			</div>
			</div>


<h3>Address Information:</h3>

        	<div class="form2">
        	<div>
			<!-- Address -->
			<label for="address">Address:</label> <input type="text" id="address"
				name="address" placeholder="Enter Your Address" class="field2" required>
</div><div>
			<!-- Voter ID -->
			<label for="voter_id">Voter ID Number:</label> <input type="text"
				id="voter_id" name="voter_id" placeholder="Enter Your Voter ID" class="field2"
				required>
</div><div>
			<!-- Aadhaar no. -->
			<label for="aadhar_no">Aadhaar Number:</label> <input type="text"
				id="id_proof" name="aadhaar_no" placeholder="Enter Your Aadhaar Number" class="field2" required>
</div>
</div>
			
			
			
						
<h3>Authentication Information:</h3>					
			<div class="form3">
<div>			
			<!-- Username -->
			<label for="username">Username:</label> <input type="text"
				id="username" name="username" placeholder="Username" class="field3"
				required>
</div><div>
			<!-- Password -->
			<label for="password">Password:</label> <input type="password"
				id="password" name="password" class="field3" placeholder="Enter a Password"
				required>
</div><div>
			<!-- Confirm Password -->
			<label for="confirm_password">Confirm Password:</label> <input
				type="password" id="confirm_password" name="confirm_password"
				placeholder="Confirm Your Password" class="field3" required>
</div>			
	
			</div>
        	
			<!-- Agree to Terms -->
			<input type="checkbox" id="terms" name="terms" value="Agree"required> <label
				for="terms">I agree to the terms and conditions</label>
			
			
			
			<!-- Submit Button -->
			<div class="btn">
			<button type="submit">Register</button>
			</div>
		</form>
	</section>

</body>
</html>