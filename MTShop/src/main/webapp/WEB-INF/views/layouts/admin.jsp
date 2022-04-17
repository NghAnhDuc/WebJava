<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.opensymphony.com/sitemesh/decorator"
	prefix="decorator"%>
<%@include file="/WEB-INF/views/layouts/admin/taglib.jsp"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title><decorator:title default="Master-Layout" /></title>
</head>
<body>
	<%@include file="/WEB-INF/views/layouts/admin/header.jsp"%>

	<decorator:body></decorator:body>

	<%@include file="/WEB-INF/views/layouts/admin/footer.jsp"%>
</body>
</html>