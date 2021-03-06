<%-- 
    Document   : Register
    Created on : 5 jun. 2022, 16:20:39
    Author     : lalop
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
	<title>Registro</title>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
<!--===============================================================================================-->	
	<link rel="icon" type="image/png" href="images/icons/favicon.ico"/>
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor/bootstrap/css/bootstrap.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="fonts/font-awesome-4.7.0/css/font-awesome.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="fonts/Linearicons-Free-v1.0.0/icon-font.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor/animate/animate.css">
<!--===============================================================================================-->	
	<link rel="stylesheet" type="text/css" href="vendor/css-hamburgers/hamburgers.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor/animsition/css/animsition.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor/select2/select2.min.css">
<!--===============================================================================================-->	
	<link rel="stylesheet" type="text/css" href="vendor/daterangepicker/daterangepicker.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="css/util.css">
	<link rel="stylesheet" type="text/css" href="css/main.css">
<!--===============================================================================================-->
</head>
<body style="background-color: #666666;">
	
	<div class="limiter">
		<div class="container-login100">
			<div class="wrap-login100">
                            <form class="login100-form validate-form" action="register.jsp" method="POST">
					<span class="login100-form-title p-b-34">
						Registro
					</span>
					
					
					<div class="wrap-input100 validate-input" data-validate = "Este campo no puede estar vac??o">
						<input class="input100" type="text" name="nusuario">
						<span class="focus-input100"></span>
						<span class="label-input100">Nombre de usuario</span>
					</div>
                                
                                <div class="wrap-input100 validate-input" data-validate = "No es un correo v??lido: ex@example.com">
						<input class="input100" type="text" name="email">
						<span class="focus-input100"></span>
						<span class="label-input100">Correo</span>
					</div>
					
					<div class="wrap-input100 validate-input" data-validate="La contrase??a es necesaria">
						<input class="input100" type="password" name="pass1">
						<span class="focus-input100"></span>
						<span class="label-input100">Contrase??a</span>
					</div>
                                
                                <div class="wrap-input100 validate-input" data-validate="La contrase??a no es la misma">
						<input class="input100" type="password" name="pass2">
						<span class="focus-input100"></span>
						<span class="label-input100">Repite tu contrase??a</span>
					</div>
			
                                <div></div>
                                
					<div class="container-login100-form-btn">
						<button class="login100-form-btn">
							Registrarse
						</button>
					</div>
					
					<div class="text-center p-t-46 p-b-20">
						<span class="txt2">
							O Inicia sesi??n con:
						</span>
					</div>

					<div class="login100-form-social flex-c-m">
						<a href="#" class="login100-form-social-item flex-c-m bg1 m-r-5">
							<i class="fa fa-facebook-f" aria-hidden="true"></i>
						</a>

						<a href="#" class="login100-form-social-item flex-c-m bg2 m-r-5">
							<i class="fa fa-twitter" aria-hidden="true"></i>
						</a>
					</div>
				</form>

				<div class="login100-more" style="background-image: url('images/bg-02.jpg');">
				</div>
			</div>
		</div>
	</div>
	
	

	
	
<!--===============================================================================================-->
	<script src="vendor/jquery/jquery-3.2.1.min.js"></script>
<!--===============================================================================================-->
	<script src="vendor/animsition/js/animsition.min.js"></script>
<!--===============================================================================================-->
	<script src="vendor/bootstrap/js/popper.js"></script>
	<script src="vendor/bootstrap/js/bootstrap.min.js"></script>
<!--===============================================================================================-->
	<script src="vendor/select2/select2.min.js"></script>
<!--===============================================================================================-->
	<script src="vendor/daterangepicker/moment.min.js"></script>
	<script src="vendor/daterangepicker/daterangepicker.js"></script>
<!--===============================================================================================-->
	<script src="vendor/countdowntime/countdowntime.js"></script>
<!--===============================================================================================-->
	<script src="js/main.js"></script>

</body>
</html>