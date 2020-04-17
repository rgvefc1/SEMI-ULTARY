<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="member.model.vo.Member"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>커뮤니티용</title>
</head>
	<link rel="stylesheet" href="<%= request.getContextPath() %>/css/common/완성본틀.css">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
  	<meta name="viewport" content="width=device-width, initial-scale=1">
    <script src="http://code.jquery.com/jquery-latest.min.js" type="text/javascript"></script>
    <script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
    <script src="script.js"></script>
    <link rel="stylesheet" href="<%= request.getContextPath() %>/css/trust/matching07.css">
<body>
	<div id="all">
		<div id="all-wrap">
			<%@ include file ="/views/common/commonheader.jsp" %>
			<%@ include file ="/views/common/tr_nav.jsp" %>
			<div id="asidesection">
			<%@ include file ="/views/common/tr_aside.jsp" %>
				<section>
					<div id="top-title">
			<div id="top-1"><h2>내가 남긴 리뷰</h2></div>
			<div id="top-2">내가 남긴 위탁 후기를 보여 드립니다.</div>
		</div>
		<hr>
		<div id="page-in" style="padding-top: 10px;padding-bottom:10px;">
			<div class="content" id="content1">
				<div class="content-1">
					<img src="/Ultary/views/trustMatch/photo.jpg" class="ps">
					<h5 class="nick" id="nick1">닉네임</h5>
				</div>
				<div class="content-2">
					<h3 style="float:left">★★★★★</h3>
					<h4 style="float:right">2020-03-21</h4>
				</div>
				<div class="content-3">
					<div class="review">리뷰가 나오는곳</div>
				</div>
				<div class="content-4">
					<input type="submit" class="btn" id="sBtn" name="sBtn" value="수정하기">
					<input type="reset" class="btn" id="cBtn" name="cBtn" value="삭제하기">
				</div>
			</div>
			<div class="content" id="content2">
				<div class="content-1">
					<img src="/Ultary/views/trustMatch/photo.jpg" class="ps">
					<h5 class="nick" id="nick1">닉네임</h5>
				</div>
				<div class="content-2">
					<h3 style="float:left">★★★★★</h3>
					<h4 style="float:right">2020-03-21</h4>
				</div>
				<div class="content-3">
					<div class="review">리뷰가 나오는곳</div>
				</div>
				<div class="content-4">
					<input type="submit" class="btn" id="sBtn" name="sBtn" value="수정하기">
					<input type="reset" class="btn" id="cBtn" name="cBtn" value="삭제하기">
				</div>
			</div>
			<div class="content" id="content3">
				<div class="content-1">
					<img src="/Ultary/views/trustMatch/photo.jpg" class="ps">
					<h5 class="nick" id="nick1">닉네임</h5>
				</div>
				<div class="content-2">
					<h3 style="float:left">★★★★★</h3>
					<h4 style="float:right">2020-03-21</h4>
				</div>
				<div class="content-3">
					<div class="review">리뷰가 나오는곳</div>
				</div>
				<div class="content-4">
					<input type="submit" class="btn" id="sBtn" name="sBtn" value="수정하기">
					<input type="reset" class="btn" id="cBtn" name="cBtn" value="삭제하기">
				</div>
			</div>
		</div>
				
				
				
				
				
				
				
				</section>
			</div>
			<footer>from.hoseong</footer>
		</div>
	</div>
</body>
</html>