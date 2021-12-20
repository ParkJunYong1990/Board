<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ page session="false" %>
<html lang="ko">

<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>회원가입</title>

  <!-- 부트스트랩 CDN -->
  <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
  integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">

  <style>
    body {
      min-height: 100vh;
      background: -webkit-gradient(linear, left bottom, right top, from(#92b5db), to(#1d466c));
      background: -webkit-linear-gradient(bottom left, #92b5db 0%, #1d466c 100%);
      background: -moz-linear-gradient(bottom left, #92b5db 0%, #1d466c 100%);
      background: -o-linear-gradient(bottom left, #92b5db 0%, #1d466c 100%);
      background: linear-gradient(to top right, #92b5db 0%, #1d466c 100%);
    }
    
    .input-form {
      max-width: 680px;
      margin-top: 80px;
      padding: 32px;
      background: #fff;
      -webkit-border-radius: 10px;
      -moz-border-radius: 10px;
      border-radius: 10px;
      -webkit-box-shadow: 0 8px 20px 0 rgba(0, 0, 0, 0.15);
      -moz-box-shadow: 0 8px 20px 0 rgba(0, 0, 0, 0.15);
      box-shadow: 0 8px 20px 0 rgba(0, 0, 0, 0.15)
    }
  </style>
</head>

<body>
 <div class="container">
  <div class="input-form-backgroud row">
   <div class="input-form col-md-12 mx-auto">
    <h4 class="mb-3" align="center">회원가입</h4><br>
     <form action="login" class="validation-form" novalidate method="post">
      <div class="row">
          
         <div class="col-md-6 mb-3">
          <label for="id">아이디</label>
          <input type="text" class="form-control" name="id" placeholder="아이디를 입력하세요." value="" required>
           <div class="invalid-feedback">
				아이디를 입력해주세요.
           </div>
         </div>
            
         <div class="col-md-6 mb-3">
          <label for="password">비밀번호</label>
          <input type="password" class="form-control" name="password" placeholder="비밀번호를 입력하세요." value="" required>
           <div class="invalid-feedback">
				닉네임을 입력해주세요.
           </div>
         </div>
		</div>
        <div class="mb-3">
         <label for="name">이름</label>
         <input type="text" class="form-control" name="name" placeholder="이름을 입력하세요." required>
          <div class="invalid-feedback">
			이름을 입력해주세요.
          </div>
        </div>

		<div class="mb-3">
         <label for="age">나이</label>
         <input type="number" class="form-control" name="age" placeholder="숫자만 입력해주세요" required>
          <div class="invalid-feedback">
			나이를 입력해주세요.
          </div>
        </div>

        <div class="mb-3">
         <label for="phonenumber">전화번호</label>
         <input type="text" class="form-control" name="phonenumber" placeholder="하이픈(-)은 제외하고 입력해주세요." required>
          <div class="invalid-feedback">
			전화번호를 입력해주세요.
          </div>
        </div>

        <div class="mb-3">
         <label for="address">주소</label>
         <input type="text" class="form-control" name="address" placeholder="주소를 입력하세요." required>
          <div class="invalid-feedback">
			주소를 입력해주세요.
          </div>
         </div>

         <div class="mb-4"></div>
         <button class="btn btn-primary btn-lg btn-block" type="submit">회원 등록</button>
         
    </form>
   </div>
  </div>
 </div>
  <script>
     window.addEventListener('load', () => {
      const forms = document.getElementsByClassName('validation-form');

      Array.prototype.filter.call(forms, (form) => {
        form.addEventListener('submit', function (event) {
          if (form.checkValidity() === false) {
        	alert('입력하지 않은 항목이 존재합니다.\n 항목을 입력해주세요.');
            event.preventDefault();
            event.stopPropagation();
          } else {
        	alert('회원가입이 완료되었습니다.\n 로그인해주세요');
          }
          form.classList.add('was-validated');
        }, false);
      });
    }, false); 
  </script>
</body>

</html>