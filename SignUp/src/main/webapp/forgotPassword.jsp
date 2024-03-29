<!DOCTYPE html>
<html>
	<head>
		<meta charset='utf-8'>
		<meta name='viewport' content='width=device-width, initial-scale=1'>
		<title>Forgot Password?</title>
		<link
			href='https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css'
			rel='stylesheet'>
		<link href='' rel='stylesheet'>
		<script type='text/javascript'
			src='https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js'></script>
		<style>
		body {
			background-position: center;
			background-color: #eee;
			background-repeat: no-repeat;
			background-size: cover;
			color: #505050;
			font-family: "Rubik", Helvetica, Arial, sans-serif;
			font-size: 14px;
			font-weight: normal;
			line-height: 1.5;
			text-transform: none
		}
		
		.forgot {
			background-color: #fff;
			padding: 12px;
			border: 1px solid #dfdfdf
		}
		
		.padding-bottom-3x {
			padding-bottom: 72px !important
		}
		
		.card-footer {
			background-color: #fff
		}
		
		.btn {
			font-size: 13px
		}
		
		.form-control:focus {
			color: #495057;
			background-color: #fff;
			border-color: #76b7e9;
			outline: 0;
			box-shadow: 0 0 0 0px #28a745
		}
		</style>
		<link rel="stylesheet" href="alert/dist/sweetalert.css">
	</head>
	
	<body oncontextmenu='return false' class='snippet-body'>
	
		<input type="hidden" id="status"
			value="<%=request.getAttribute("status")%>">
	
		<div class="container padding-bottom-3x mb-2 mt-5">
			<div class="row justify-content-center">
				<div class="col-lg-8 col-md-10">
					<div class="forgot">
						<h2>Forgot your password?</h2>
						<p>Change your password in three easy steps. This will help you
							to secure your password!</p>
						<ol class="list-unstyled">
							<li><span class="text-primary text-medium">1. </span>Enter
								your email address below.</li>
							<li><span class="text-primary text-medium">2. </span>Answer
								the Security questions below.</li>
							<li><span class="text-primary text-medium">3. </span>Our
								system will redirect you to the password reset page.</li>
						</ol>
					</div>
					<form class="card mt-4" action="forgotPassword" method="POST">
						<div class="card-body">
							<div class="form-group">
								<label for="email-for-pass">Enter your email address</label> <input
									class="form-control" type="text" name="email"
									id="email-for-pass" required="required"><small
									class="form-text text-muted">Enter the registered email
									address. And answer the security questions below.</small>
							</div>
							<div>
								1. What is your favourite color? <label for="firstAnswer"><i
									class="zmdi zmdi-lock-outline"></i></label> <input type="text"
									name="firstAnswer" id="firstAnswer"
									placeholder="Security Question 1" required="required" />
							</div>
							<div>
								2. What is your father's name? <label for="secondAnswer"><i
									class="zmdi zmdi-lock-outline"></i></label> <input type="text"
									name="secondAnswer" id="secondAnswer" required="required"
									placeholder="Security Question 2" />
							</div>
						</div>
						<div class="card-footer">
							<button class="btn btn-success" type="submit">Get New
								Password</button>
							<button class="btn btn-danger" type="submit">Back to
								Login</button>
						</div>
					</form>
				</div>
			</div>
		</div>
		<script type='text/javascript'
			src='https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.bundle.min.js'></script>
		<script type='text/javascript' src=''></script>
		<script type='text/javascript' src=''></script>
		<script type='text/Javascript'></script>
	
		<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
		<!-- <link rel="stylesheet" href="alert/dist/sweetalert.css"> -->
	
		<script type="text/javascript">
			var status = document.getElementById("status").value;
			if (status == "invalidEmail") {
				swal("Warning", "Please enter the email", "error");
			} else if (status == "invalidAnswer") {
				swal("Warning", "Please answer the questions", "error");
			} else if (status == "invalidAnswers") {
				swal("Warning", "Wrong email / Answers", "error");
			}
		</script>
	</body>
</html>