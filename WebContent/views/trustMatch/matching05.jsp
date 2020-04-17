<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="trust.model.vo.*,java.util.ArrayList,member.model.vo.Pet"%>
<%
	Pet mypet = (Pet)request.getAttribute("mypet");
	ArrayList<TrustPost> balsin = (ArrayList<TrustPost>)request.getAttribute("balsin");
	ArrayList<TrustPost> susin = (ArrayList<TrustPost>)request.getAttribute("susin");
	
	ArrayList<TrustPost> balsin0 = null;
	ArrayList<TrustPost> balsin1 = null;
	ArrayList<TrustPost> balsin2 = null;
	
	ArrayList<TrustPost> susin0 = null; 
	ArrayList<TrustPost> susin1 = null;
	ArrayList<TrustPost> susin2 = null;
	
	for(int i=0; i> balsin.size();i++){
		if(balsin.get(i).getPosition()==0){
			balsin0.add(balsin.get(i));
		}else if(balsin.get(i).getPosition()==1){
			balsin1.add(balsin.get(i));
		}else if(balsin.get(i).getPosition()==2){
			balsin2.add(balsin.get(i));
		}
	}
	for(int i=0; i> susin.size();i++){
		if(susin.get(i).getPosition()==0){
			susin0.add(susin.get(i));
		}else if(balsin.get(i).getPosition()==1){
			susin1.add(susin.get(i));
		}else if(balsin.get(i).getPosition()==2){
			susin2.add(susin.get(i));
		}
	}
%>
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
    <link rel="stylesheet" href="<%= request.getContextPath() %>/css/trust/matching05.css">
<body>
	<div id="all">
		<div id="all-wrap">
			<%@ include file ="/views/common/commonheader.jsp" %>
			<%@ include file ="/views/common/tr_nav.jsp" %>
			<div id="asidesection">
			<%@ include file ="/views/common/tr_aside.jsp" %>
				<section>
					<div>
            <form>
            <div id="matching">
				<h1 id="title">의뢰관리</h1>
				<p id="title-1">위탁 내용 상세보기와 진행사항을 보여드립니다.</p>
					<hr style="margin-left:10px;">
				<br clear="all">
				</div>
			<div id="page">
				<div id="page1">
					
					<div id= "page3">
						<div id="page3-1">
							<h3>반려동물 정보</h3>
						</div>
						<div id="page3-2">
							<table id="page3_table">
								<tr>
									<td class="page3_td"><div class="petname">반려동물 이름</div></td>
									<td><label>모모</label></td>
								</tr>
								<tr>
									<td class="page3_td"><div class="petname">반려동물 종류</div></td>
									<td><label>강아지</label></td>
								</tr>
								<tr>
									<td class="page3_td"><div class="petname">성별</div></td>
									<td><label>여</label></td>
								</tr>
								<tr>
									<td class="page3_td"><div class="petname">출생년도</div></td>
									<td><label>2019</label></td>
								</tr>
							</table>
						</div>
						<div id="page3-3">
							<img src="/Ultary/views/trustMatch/photo.jpg" id="pet-photo">
						</div>
					</div>
				<div id="page4" >
					<div id="page4-1">의뢰관리</div>
					<div id="page4-1-1" class="subtitle" onclick="nosub();">미승인</div>
					<div id="page4-1-2" class="subtitle" onclick="sub();">수락	</div>
					<div id="page4-1-3" class="subtitle">거절	</div>
					
					<div class="subcircle" id="subcircle1"><p id="no">1건</p></div>
					<div class="subcircle" id="subcircle2"><p id="accept">1건</p></div>
					<div class="subcircle" id="subcircle3"><p id="nono">1건</p></div>
				</div>
				
				<div id="no-popup1" style="display:none">
					<div id="no-popup-1" >
					<div id="myreq">
							<input type="radio" name="req" id="popup01"><label>내가 보낸 의뢰</label>
						</div>
						<div id="myresp">
							<input type="radio" name="req" id="popup02"><label>내가 받은 의뢰</label>
						</div>
					
					<div id="reqcontent1">
						<div id ="req1">
							<img src="/Ultary/views/trustMatch/photo.jpg" id="req-photo">
							<h5 style="display:inline">닉네임</h5>
						</div>
						<div id ="req2">
							의뢰일 | 22.12. 6 15:34
						</div>
						<div id ="req3">
							<p style="display:inline;">우리의 귀는 생의 찬미를 듣는다 그것은 웅대한 관현악이며 미묘한 교향악이다
								뼈 끝에 스며들어 가는 열락의 소리다이것은 피어나기 전인 유소년에게서 구하지 못할 바이며
								 시들어 가는 노년에게서 구하지 못할 바이며 오직 우리 청춘에서만 구할
							</p>
						</div>
						<button id="btn1" class="btn">수락</button>
					<button id="btn2" class="btn">거절</button>
					</div>
					</div>
					</div>
				<div id="no-popup2" style="display:none">
				<div id="no-popup-1">
					<div id="myreq">
							<input type="radio" name="req" id="popup01"><label>내가 보낸 의뢰</label>
						</div>
						<div id="myresp">
							<input type="radio" name="req" id="popup02"><label>내가 받은 의뢰</label>
						</div>
					</div>
					<div id="respcontent2">
						<div id ="req1">
							<img src="/Ultary/views/trustMatch/photo.jpg" id="req-photo">
							<h5 style="display:inline">닉네임</h5>
						</div>
						<div id ="req2">
							의뢰일 | 22.12. 6 15:34
						</div>
						<div id ="req3">
							<p style="display:inline;">우리의 귀는 생의 찬미를 듣는다 그것은 웅대한 관현악이며 미묘한 교향악이다
								뼈 끝에 스며들어 가는 열락의 소리다이것은 피어나기 전인 유소년에게서 구하지 못할 바이며
								 시들어 가는 노년에게서 구하지 못할 바이며 오직 우리 청춘에서만 구할
							</p>
						</div>
						<button id="btn1" class="btn"><a href="/Ultary/views/trustMatch/matching06.jsp">리뷰작성</a></button>
						
					</div>
				</div>
				</div>
<script>

	$(function(){

	});
	function nosub(){
		$('#no-popup1').show();
		$('#no-popup2').hide();
	}
	function sub(){
		$('#no-popup2').show();
		$('#no-popup1').hide();
	}
</script>

			</div>
            </form>
         </div>
				
				
				
				
				
				
				
				</section>
			</div>
			<footer>from.hoseong</footer>
		</div>
	</div>
</body>
</html>