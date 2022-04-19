<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="/WEB-INF/views/layouts/user/taglib.jsp"%>

<head>
<title>Register</title>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
</head>
<body>

	<div class="limiter">
		<div class="container-login100">
			<div class="wrap-login100">
				<div class="login100-pic js-tilt" data-tilt>
					<img
						src="<c:url value="/assets/login&register/images/img-01.png"/> "
						alt="IMG">
				</div>

				<form:form class="login100-form validate-form" action="dang-ky"
					method="POST" modelAttribute="user">
					<span class="login100-form-title"> Member Register</span>
					
					<c:if test="${not empty status}">
						<p class="text-center mb-3 text-danger">${status}</p>  					
					</c:if>
					
					<div class="wrap-input100 validate-input"
						data-validate="Valid email is required: ex@abc.xyz">
						<form:input class="input100" type="text" name="email"
							placeholder="Email" path="user"/> <span class="focus-input100"></span>
						<span class="symbol-input100"> <i class="fa fa-envelope"
							aria-hidden="true"></i>
						</span>
					</div>

					<div class="wrap-input100 validate-input"
						data-validate="Password is required">
						<form:input class="input100" type="password" name="pass"
							placeholder="Password" path="password"/> <span class="focus-input100"></span>
						<span class="symbol-input100"> <i class="fa fa-lock"
							aria-hidden="true"></i>
						</span>
					</div>
					
					<div class="wrap-input100 validate-input"
						data-validate="Valid email is required: ex@abc.xyz">
						<form:input class="input100" type="text" name="yourname"
							placeholder="Your name" path="display_name"/> <span class="focus-input100"></span>
						<span class="symbol-input100"> <i class="fa fa-user"
							aria-hidden="true"></i>
						</span>
					</div>
					
					<div class="wrap-input100 validate-input"
						data-validate="Valid email is required: ex@abc.xyz">
						<form:input class="input100" type="text" name="address"
							placeholder="Address" path="address"/> <span class="focus-input100"></span>
						<span class="symbol-input100"> <i class="fa fa-address-card"
							aria-hidden="true"></i>
						</span>
					</div>

					<div class="container-login100-form-btn">
						<button class="login100-form-btn">Register</button>
					</div>
					
					<div class="text-center p-t-12">
						<span class="txt1"> Forgot </span> <a class="txt2" href="#">
							Username / Password? </a>
					</div>

					<div class="text-center p-t-136">
						<a class="txt2" href="<c:url value="/dang-nhap"/>"> Login your Account <i
							class="fa fa-long-arrow-right m-l-5" aria-hidden="true"></i>
						</a>
					</div>
				</form:form>
			</div>
		</div>
	</div>
</body>
