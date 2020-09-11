<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags"%>

<!DOCTYPE html>
<html lang="ko">
<head>
<!-- tui editor-->
	<script src="https://uicdn.toast.com/editor/latest/toastui-editor-all.min.js"></script>
	<!-- Editor's Dependecy Style -->
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/codemirror/5.48.4/codemirror.min.css"/>
	<!-- Editor's Style -->
	<link rel="stylesheet" href="https://uicdn.toast.com/editor/latest/toastui-editor.min.css" />

<title>wiki domain</title>
</head>
<style>
.inputStyle{
	padding : 3%;
}


#right-navigation {
    float: right;
    margin-top: 2.5em;
}

</style>

 <body >
 <div id="mw-page-base" class=""></div>
  <!-- start of contents  -->   
    <div id="content" class="" role="main">
 		<div class="row">
 			<div class="col-md-10" data-placeholder="WikiPlaceholder-HelpCenterIntro">
				<p><br></p>
					<h2>시작하기</h2><br>
					<p>
					 <a href="/wiki/Help">DE 커뮤니티 시작하기!</a><br>
					  하모니카 커뮤니티에 오신것을 환영합니다. 하모니카 커뮤니티 이용에 관련된 정보를 제공합니다.
					</p>	
					<p><br>
						<a href="/wiki/Help/FnA">※자주 묻는 질문들※ </a> <br>
					</p>
					<ul>
					  <li>
					  <svg aria-hidden="true" class="svg-icon iconTack" width="18" height="18" viewBox="0 0 18 18"><path d="M6.79 12.67l3.53 3.53a6 6 0 001.18-6.83l2.03-2.03A4 4 0 0018 5.5L12.53.03A4 4 0 0010.7 4.5L8.67 6.54a6 6 0 00-6.83 1.18l3.53 3.53-3.18 3.18-1.77 3.19 3.18-1.77 3.19-3.18z"></path></svg>     
					  <a href="/wiki/Help/FnA">질문을 어떻게 묻고 답하는가?</a></li>
					  <li>
					    <svg aria-hidden="true" class="svg-icon iconTack" width="18" height="18" viewBox="0 0 18 18"><path d="M6.79 12.67l3.53 3.53a6 6 0 001.18-6.83l2.03-2.03A4 4 0 0018 5.5L12.53.03A4 4 0 0010.7 4.5L8.67 6.54a6 6 0 00-6.83 1.18l3.53 3.53-3.18 3.18-1.77 3.19 3.18-1.77 3.19-3.18z"></path></svg>     
					  	<a href="">왜 내 평판이 올랐는가/떨어졌는가?</a></li>
					  <li>
					   <svg aria-hidden="true" class="svg-icon iconTack" width="18" height="18" viewBox="0 0 18 18"><path d="M6.79 12.67l3.53 3.53a6 6 0 001.18-6.83l2.03-2.03A4 4 0 0018 5.5L12.53.03A4 4 0 0010.7 4.5L8.67 6.54a6 6 0 00-6.83 1.18l3.53 3.53-3.18 3.18-1.77 3.19 3.18-1.77 3.19-3.18z"></path></svg>     
					  	<a href="">내 질문이 중복이 아니라고 생각될 때 나는 어떻게 할 수 있을까?</a></li>
					  <li>
					    <svg aria-hidden="true" class="svg-icon iconTack" width="18" height="18" viewBox="0 0 18 18"><path d="M6.79 12.67l3.53 3.53a6 6 0 001.18-6.83l2.03-2.03A4 4 0 0018 5.5L12.53.03A4 4 0 0010.7 4.5L8.67 6.54a6 6 0 00-6.83 1.18l3.53 3.53-3.18 3.18-1.77 3.19 3.18-1.77 3.19-3.18z"></path></svg>     
					  	<a href="">"우리는 더 이상 이 계정에서 질문/대답을 받지 않는다"를 받을 때 어떻게 해야 하는가?</a></li>
					</ul>
					<div>
				<%-- 	<sec:authorize access="hasRole('ROLE_ADMIN')">
					   	<a href="/wiki/saveHelp">[helps 작성하기]</a>
					</sec:authorize>
 --%>						<a href="/wiki/Help">[더보기]</a>
					</div>
				<hr>
			</div>
		
 		</div>
 		<div class="row" data-placeholder="WikiPlaceholder-HelpCenterIntro">
 		<div class="col">		
 			<p><br></p>
					<h2>Tags</h2>	
			<p><br></p>
		</div>
		</div>
		<div class="row">
			<div class="col-md-3">
			<hr>		
				<ul>
					  <li> JavaScript</li>
					  <li> Java</li>
					  <li> Jquery</li>
				</ul>	  
			</div>
			<div class="col-md-3" style="margin-left:5%">		
			<hr>		
				<ul>
					  <li> JavaScript</li>
					  <li> Java</li>
					  <li> Jquery</li>
				</ul>	 				
			</div>
			<div class="col-md-3" style="margin-left:5%">		
				<hr>		
				<ul>
					  <li> JavaScript</li>
					  <li> Java</li>
					  <li> Jquery</li>
				</ul>	 						
			</div>
 		 <div>    
     </div>
 	</div>
    	<a href="/wiki/saveTag">[Tag 작성하기]</a>
  </div>  
  <!-- end of contents  -->   
  <!-- start of  nav -->
 <div id = "">

  </div>  

</body>

<script>

  </script>


</html>