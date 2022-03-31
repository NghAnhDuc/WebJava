<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.opensymphony.com/sitemesh/decorator"
	prefix="decorator"%>
<%@include file="/WEB-INF/views/layouts/user/taglib.jsp"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title><decorator:title default="Master-Layout" /></title>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">

<!-- Google Font -->
<link
	href="https://fonts.googleapis.com/css2?family=Cairo:wght@200;300;400;600;900&display=swap"
	rel="stylesheet">

<!-- Css Styles -->
<link rel="stylesheet"
	href="<c:url value="/assets/user2/css/bootstrap.min.css"/> "
	type="text/css">
<link rel="stylesheet"
	href="<c:url value="/assets/user2/css/font-awesome.min.css"/>  "
	type="text/css">
<link rel="stylesheet"
	href="<c:url value="/assets/user2/css/elegant-icons.css"/>  "
	type="text/css">
<link rel="stylesheet"
	href="<c:url value="/assets/user2/css/nice-select.css"/> "
	type="text/css">
<link rel="stylesheet"
	href="<c:url value="/assets/user2/css/jquery-ui.min.css"/>  "
	type="text/css">
<link rel="stylesheet"
	href="<c:url value="/assets/user2/css/owl.carousel.min.css"/>  "
	type="text/css">
<link rel="stylesheet"
	href="<c:url value="/assets/user2/css/slicknav.min.css"/>  "
	type="text/css">
<link rel="stylesheet"
	href="<c:url value="/assets/user2/css/style.css"/>  " type="text/css">

<!--===============================================================================================-->
<link rel="icon" type="image/png"
	href="<c:url value="/assets/login&register/images/icons/favicon.ico"/>" />
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="<c:url value="/assets/login&register/vendor/bootstrap/css/bootstrap.min.css"/>">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="<c:url value="/assets/login&register/fonts/font-awesome-4.7.0/css/font-awesome.min.css"/>">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="<c:url value="/assets/login&register/vendor/animate/animate.css"/>">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="<c:url value="/assets/login&register/vendor/css-hamburgers/hamburgers.min.css"/>">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="<c:url value="/assets/login&register/vendor/select2/select2.min.css"/>">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="<c:url value="/assets/login&register/css/util.css"/>">
<link rel="stylesheet" type="text/css"
	href="<c:url value="/assets/login&register/css/main.css"/>">

<decorator:head></decorator:head>
</head>

<body>

	<%@include file="/WEB-INF/views/layouts/user/header2.jsp"%>

	<decorator:body></decorator:body>

	<%@include file="/WEB-INF/views/layouts/user/footer2.jsp"%>

	<!-- Js Plugins -->
	<script src="<c:url value="/assets/user2/js/jquery-3.3.1.min.js"/> "></script>
	<script src="<c:url value="/assets/user2/js/bootstrap.min.js"/> "></script>
	<script
		src="<c:url value="/assets/user2/js/jquery.nice-select.min.js"/> "></script>
	<script src="<c:url value="/assets/user2/js/jquery-ui.min.js"/> "></script>
	<script src="<c:url value="/assets/user2/js/jquery.slicknav.js"/> "></script>
	<script src="<c:url value="/assets/user2/js/mixitup.min.js"/> "></script>
	<script src="<c:url value="/assets/user2/js/owl.carousel.min.js"/> "></script>
	<script src="<c:url value="/assets/user2/js/main.js"/> "></script>

	<decorator:getProperty property="page.script"></decorator:getProperty>

	<!--===============================================================================================-->
	<script
		src="<c:url value="/assets/login&register/vendor/jquery/jquery-3.2.1.min.js"/>"></script>
	<!--===============================================================================================-->
	<script
		src="<c:url value="/assets/login&register/vendor/bootstrap/js/popper.js"/>"></script>
	<script
		src="<c:url value="/assets/login&register/vendor/bootstrap/js/bootstrap.min.js"/>"></script>
	<!--===============================================================================================-->
	<script
		src="<c:url value="/assets/login&register/vendor/select2/select2.min.js"/>"></script>
	<!--===============================================================================================-->
	<script
		src="<c:url value="/assets/login&register/vendor/tilt/tilt.jquery.min.js"/>"></script>
	<script>
		$('.js-tilt').tilt({
			scale : 1.1
		})
	</script>
	<!--===============================================================================================-->
	<script src="<c:url value="/assets/login&register/js/main.js"/>"></script>

</body>
</html>