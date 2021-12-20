<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ page session="false" %>
<html>
<head>
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<!-- 부트스트랩 CDN -->
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">
	<title>로그인</title>
    <style>
        .page{
          position:absolute;
          top:40%;
          left:50%;
          transform:translate(-50%, -50%);
        }
    </style>
</head>
<body>
	<div class="page">
		<div class="title">
			<h1>로그인해주세요</h1>
		</div>
		<div class="content form-horizontal align-items-center">
		    <form th:action="@{/}" method="post" >
		        <div class="form-group">
		            <label for="username" class="control-label">아이디</label>
		            <input type="text" id="username" name="username" class="form-control"/>
		
		            <label for="password" class="control-label">비밀번호</label>
		            <input type="password" id="password" name="password" class="form-control"/>
		        </div>
		        <div class="form-group">
		            <input type="submit" value="로그인" class="btn btn-primary btn-block">
		        </div>
		    </form>
		    <div class="form-group">
		        <form action="register" method="get">
		            	<input type="submit" value="회원가입" class="btn btn-primary btn-block">
		        </form>
		    </div>
		</div>
	</div>
	<script>
	
	</script>
</body>
</html>
