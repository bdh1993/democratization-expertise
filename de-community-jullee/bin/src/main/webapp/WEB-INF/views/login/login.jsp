<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <title>로그인</title>
  <!-- Tell the browser to be responsive to screen width -->
  <meta name="viewport" content="width=device-width, initial-scale=1">

 <script src="https://apis.google.com/js/client:platform.js?onload=renderButton" async defer></script>
 <meta name="google-signin-scope" content="profile email">
 <meta name="google-signin-client_id" content="1042506284094-s49av9n5sk34ell2u70lachpmihn07gu.apps.googleusercontent.com"></meta>
 
 </head>

<style>
#algin-center{
	margin : 10% 10% 10% 10%;
}
strong{
	margin-left:5%;
	font-weight:20px;
	font-weight:bold;
}
</style>


<body>
 <div class="hold-transition login-page">
  <div class="login-logo">
    <a href="/"><b>DE</b> COMMUNITY</a>
  </div>
  <!-- /.login-logo -->
  <div class="card">
    <div class="login-card-body">
      <div class="login-box-msg">
       <h3>로그인</h3>
      </div>
      <form id="frm" name="frm" method="post" autocomplete="off" style="width:95%;">
  		<input type ="hidden" th:name="${_csrf.parameterName}" th:value="${_csrf.token}"/> 
			<div class="row">
			<div class="input-group mb-3">
	          <div class="col-8">
				</div>
			</div>
		 </div>
		<div class="row">
	  		<div class="input-group mb-3">
      		</div>
      	</div>
     <div class="row"style="margin-bottom:10px;">
     <div class="col-8" style="margin-bottom:10px;">
     	<p><strong>아이디 </strong><strong style="color:red;">*</strong>
     </div>
          	<div class="form-group col-12"> 	    
		      	<input type="text" class="form-control" id="username" name="username" style="margin-left: 10px" value="lee2" placeholder="아이디를 입력해주세요" maxlength="20">             	
		   </div>
        </div>
       <br>
        <div class="row">
        <div class="col-8">
        	<p><strong> 비밀번호</strong><strong style="color:red;"> *</strong>
        </div>
         <div class="col-xs-3" style="margin-left:60%;margin-bottom:10px;" >
     		<a href="/accountRecovery/sendRecoveryEmail">비밀번호를 잊으셨습니까?</a>
    	  </div>
         <div class="form-group col-12">
         	 <input type="password" class="form-control" id="password" name="password" style="margin-left: 10px" value="lee1234" placeholder="비밀번호를 입력해주세요" maxlength="20">
         </div>
		</div>
          <br>
		
		<!-- 로그인 버튼  -->
         <div class="row-8" style="margin-left:10px;">
            <button type="submit" name = "submit" class="col-12 btn btn-primary btn-block">로그인</button>
          </div>
      </form>
      
      
      <div class="social-auth-links text-center mb-3" style="margin:60px;">
      <br> <p>- SNS 계정으로 로그인 -</p>
        <div class="row" align="center" >
        
        <!-- 깃헙 -->
          <div class="col-2">
	         <a href="javascript:;" class="btn_social" data-social="github">  
				<img src="/img/logo.png" style="height:30px;margin-left:0px;">
		      </a>
	       </div>
	       
	       <!-- 구글 -->
		<div class="col-2" style="margin-left:20px;">     	           
		 	<a href="javascript:;" class="g-signin2 btn_social" data-width="32" data-height="32" data-social="google"></a> 
 	    </div>

	        <!-- 네이버 -->
	        <div class="col-2" style="margin-left:20px;">	        	
	       	<a href="javascript:;" class="btn_social" data-social="naver">
					<img src="/img/naver_login.png" style="height:30px;">
				</a>		
	        </div>
	        
	        <!-- 카카오 -->
	        <div class="col-2" style="margin-left:20px;">
		      <a href="javascript:;" class="btn_social" data-social="kakao">
				<img src="/img/kakaolink_btn_medium_ov.png" style="height:30px;">	
				</a>
	        </div>
      	</div>
    </div>
      <!-- /.social-auth-links -->

		<!-- sign up part -->
		<div class="row" align="center">
	      <p class="col">계정이 없으십니까?
	        <a href="/signup/signup" class="text-center">회원가입</a>
	  	  </p>
      </div>
      
    </div>
    <!-- /.login-card-body -->
  </div>
</div>


 <script type="text/javascript">
	// 일반 로그인 
 let socials = document.getElementsByClassName("btn_social"); 

    for(let social of socials) {
       social.addEventListener('click', function(){ 
       	let socialType = this.getAttribute('data-social'); 
    		location.href="/oauth2/authorization/" + socialType; 
    	})
     }


    $(document).ready(function(){
		$("#submit_action").on("click",submitAction);	
	 
	   function submitAction(){

/* 		   document.frm.action = "/login";
			document.frm.submit();		   
 */
 /* 			var userid = $("#username").val();
			var userpassword = $("#password").val();
	
		if(userid == null || userid =="" || userid=="undefinded"){
			alert("아이디를 입력해주세요");
			$("#username").focus();	
			} else if(userpassword == null || userpassword =="" || userpassword=="undefinded"){
				alert("비밀번호를 입력해주세요");	
				$("#password").focus();
				} else{
					document.frm.action = "/loginSuccess";
					document.frm.submit();
					alert("user id---->" + userid+"\n"+"userPassword---->" + userpassword);							
				}	 */				
			}
    });

  </script> 

</body>
</html>
