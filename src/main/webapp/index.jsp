<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<title>HELP PET 쉽고 빠른 입양과 후원</title>
		<meta charset="utf-8" />
		<link rel="stylesheet" href="assets/css/main.css" />
		<style>
		.nav{
		right:0; 
		left:auto;
		}
		</style>
	</head>
	<body class="homepage is-preload">
<div style="text-align:center; margin-left:1300px">
<%	
	if(session.getAttribute("sessionID") != null) {
		out.println("<a href=login/logout.jsp>로그아웃</a>");
		out.println("<a href=join/updateForm.jsp >정보수정</a>");
	} else {
		out.println("<a href=login/loginForm.jsp >로그인</a>");
		out.println("<a href=join/insertForm.jsp >회원가입</a>");
	}
	
%> 
</div>
	
		<div id="page-wrapper">
		
			<!-- Header -->
				<section id="header">
					<div class="container">

						<!-- Logo -->
							<h1 id="logo"><a href="index.jsp">HELP PET</a></h1>
							<p>쉽고 빠른 입양과 후원</p>

						<!-- Nav -->
							<nav id="nav">
								<ul>
									<li><a class="icon solid fa-home" href="index.jsp"><span>HOME</span></a></li>
									<li>
										<a href="#" class="icon fa-chart-bar"><span>입양공고</span></a>
										<ul>
											<li><a href="#">강아지</a></li>
											<li><a href="#">고양이</a></li>
											<li><a href="#">그 외 동물</a></li>
										</ul>
									</li>
									<li>
										<a href="#" class="icon fa-chart-bar"><span>실종소식</span></a>
										<ul>
											<li><a href="community/list.jsp">제보 게시판</a></li>
											<li><a href="#">신고 게시판</a></li>
										</ul>
									</li>
									<li>
										<a href="#" class="icon fa-chart-bar"><span>입양후기</span></a>
										<ul>
											<li><a href="#">강아지</a></li>
											<li><a href="#">고양이</a></li>
											<li><a href="#">그 외 동물</a></li>
										</ul>
									</li>
									<li>
										<a href="#" class="icon fa-chart-bar"><span>정보</span></a>
										<ul>
											<li><a href="#">공지사항</a></li>
											<li><a href="#">후원안내</a></li>
											<li><a href="#">정보공유게시판</a></li>
										</ul>
									</li>
									
								</ul>
							</nav>

					</div>
				</section>
		</div>

				<section>
					<div class="container">
						<a href="#" class=""><img src="assets/css/images/banner.png" alt="가정의달 배너" /></a>
					</div>
					
				</section>

			<!-- Features -->
				<section id="features">
					<div class="container">
						<header>
							<h2>분양중인 동물</h2>
						</header>
						<div class="row aln-center">
							<div class="col-4 col-6-medium col-12-small">

								<!-- Feature -->
									<section>
										<a href="#" class="image featured"><img src="assets/css/images/01.png" alt="골든리트리버" /></a>
										<header>
											<h3>발랄한 장난꾸러기 동이</h3>
										</header>
										<p>호기심이 많은 1살 남아 골든리트리버</p>
									</section>

							</div>
							<div class="col-4 col-6-medium col-12-small">

								<!-- Feature -->
									<section>
										<a href="#" class="image featured"><img src="assets/css/images/02.png" alt="닥스훈트" /></a>
										<header>
											<h3>활기찬 닥스훈트 마리</h3>
										</header>
										<p>공놀이를 좋아하는 3살 여아 닥스훈트</p>
									</section>

							</div>
							<div class="col-4 col-6-medium col-12-small">

								<!-- Feature -->
									<section>
										<a href="#" class="image featured"><img src="assets/css/images/03.png" alt="아비니시안" /></a>
										<header>
											<h3>수다쟁이 미니</h3>
										</header>
										<p>사냥놀이를 좋아하는 3살 여아 아비니시안</p>
									</section>

							</div>
							<div class="col-12">
								<ul class="actions">
									<li><a href="#" class="button icon solid fa-file">더 많은 분양정보 보기</a></li>
								</ul>
							</div>
						</div>
					</div>
				</section>

			<!-- Banner -->
				<section id="banner">
					<div class="container">
						<p>후원해주세요</p>
					</div>
				</section>

			<!-- Main -->
				<section id="main">
					<div class="container">
						<div class="row">

							<!-- Content -->
								<div id="content" class="col-8 col-12-medium">

									<!-- Post -->
										<article class="box post">
											<header>
												<h2><a href="#">매년 많은 동물들이 유기되고 있습니다.</h2>
											</header>
											<a href="#" class="image featured"><img src="assets/css/images/donation.png" alt="후원배너" /></a>
											<h3>사지 말고 입양하세요</h3>
											<p>펫샵 소비해주지말고 입양합시다. 많은 동물들이 버려지고 안락사를 당하고있습니다. 
											보호소의 많은 동물들의 소중한 인생을 인간의 욕심때문에 일찍 마감하게 두지 말아주세요.
											물론 치료가 어려운 병에 걸려 책임감없는 주인이 버린 경우도 있지만,
											대부분은 동물에게 문제가 있기보다는 사람의 문제로 버려진 경우가 대부분입니다.
											(잃어버린 후 찾지못함, 경제적여건이 안됨, 가족의 반대, 감정적인 선택 등)
											우리나라도 이제 반려동물을 입양하는 문화가 정착되어야 합니다.
											지금 이 순간에도 여러분의 지역에 있는 보호소에는 하루평균 3~5마리의 유기동물이
											접수되고 들어오고 있습니다. 
											조금만 관심을 가지면 당신과 행복하게 반려할 동물을 만날 수 있습니다.
											당신의 후원은 저희에게 큰 도움이 됩니다.
											</p>
											<ul class="actions">
												<li><a href="#" class="button icon solid fa-file">후원하러 가기</a></li>
											</ul>
										</article>

									<!-- Post -->
										<article class="box post">
											<header>
												<h2><a href="#">후원 기업 목록</h2>
											</header>
											<a href="#" class="image featured"><img src="assets/css/images/company.png" alt="후원기업" /></a>
											<h3>많은 회사들이 저희와 함께하고있습니다.</h3>
											<p>여러분의 후원금은 헬프펫의 사지 않고 입양하는 문화를 만들어가기 위한 활동에 사용됩니다.
											후원 형태는 정기구독과 정기후원으로 분류됩니다. 정기구독은 헬프펫이 발행하는 매거진과 굿즈를 분기별로
											받아볼 수 있는 구독 서비스와 결합된 후원이며, 정기후원은 정기적인 금액의 후원을 통해 헬프펫의 활동을 
											지지하는 후원입니다. 후원금은 구조,구호에 주로 쓰이며 긴급한 도움이 필요한 동물들을 구조하고,
											시민들이 구조한 동물의 치료와 입양을 지원합니다. 사설보호소 지원 및 봉사, 중성화수술과 사료지원 등 
											구호활동을 함께 합니다. 그리고 구조한 동물들은 헬프펫에 입소하여 청결한 환경에서 따듯한 보살핌을 
											받습니다. 그 외 지역 내 유기동물의 건강한 생활을 위해 급식소 설치 등 다양한 방면으로 
											여러분의 소중한 후원금이 사용되고 있습니다.</p>
											<ul class="actions">
												<li><a href="#" class="button icon solid fa-file">기업후원 참여하기</a></li>
											</ul>
										</article>

								</div>

							<!-- Sidebar -->
								<div id="sidebar" class="col-4 col-12-medium">

									<!-- Excerpts -->
										<section>
											<ul class="divided">
												<li>

													<!-- Excerpt -->
														<article class="box excerpt">
															<header>
																<span class="date">July 30</span>
																<h3><a href="#">첫번쨰 입양후기</a></h3>
															</header>
															<p>강아지를 무서워하시던 엄마는 요즘 루미를 보러 자주 놀러오세요.
															집엔 루미 사진을 인화한 귀여운 액자가 많아지고 있어요. 헬프펫을 통해
															루미를 만나서 감사하고 행복해요.</p>
														</article>

												</li>
												<li>

													<!-- Excerpt -->
														<article class="box excerpt">
															<header>
																<span class="date">July 28</span>
																<h3><a href="#">두번째 입양 후기</a></h3>
															</header>
															<p>제 첫 반려견이여서 많이 신기하고 늘 즐겁고 새롭게 지내요.
															서툰 주인이지만 친화력이 좋은 포포덕분에 고맙고 기쁩니다.
															빨리 다른 아이들도 주인을 찾아 행복했으면 좋겠어요.</p>
														</article>

												</li>
												<li>

													<!-- Excerpt -->
														<article class="box excerpt">
															<header>
																<span class="date">July 24</span>
																<h3><a href="#">세번째 입양 후기</a></h3>
															</header>
															<p>낯선 환경에 초코가 긴장을 많이 했었지만 지금은 잘 뛰어다니고 
															간식과 밥을 제일 잘 먹어요. 초코가 웃으면 저도 즐겁습니다.
															언제나 빨리 퇴근해서 초코를 볼 생각만 해요.</p>
														</article>

												</li>
											</ul>
										</section>

									<!-- Highlights -->
										<section>
											<ul class="divided">
												<li>

													<!-- Highlight -->
														<article class="box highlight">
															<header>
																<h3><a href="#">Something of note</a></h3>
															</header>
															<a href="#" class="image left"><img src="assets/css/images/well.png" alt="웰니스사료" width="200px" height="200px"/></a>
															<p>유기농 사료를 만드는 웰니스기업은 정기 후원을 하고있습니다. 
															헬프펫을 통해 입양을 했다면 웰니스사료를 많은 혜택과 함께 구매할 수 있습니다. 
															</p>
														</article>

												</li>
												<li>

													<!-- Highlight -->
														<article class="box highlight">
															<header>
																<h3><a href="#">Something of less note</a></h3>
															</header>
															<a href="#" class="image left"><img src="assets/css/images/feed.png" alt="사료"width="200px" height="200px" /></a>
															<br><p>폰케이스 쇼핑몰 피플S에서 케이스 판매 수익금으로 사료를 후원했습니다.</p>
														</article>

												</li>
											</ul>
										</section>

								</div>

						</div>
					</div>
				</section>

			<!-- Footer -->
				<section id="footer">
					
						<header>
							<h2>Questions or comments? <strong>Get in touch:</strong></h2>
						</header>
						<div class="row">
							<div class="col-6 col-12-medium">
								<section>
									<form method="post" action="#">
										<div class="row gtr-50">
											<div class="col-6 col-12-small">
												<input name="name" placeholder="Name" type="text" />
											</div>
											<div class="col-6 col-12-small">
												<input name="email" placeholder="Email" type="text" />
											</div>
											<div class="col-12">
												<textarea name="message" placeholder="Message"></textarea>
											</div>
											<div class="col-12">
												<a href="#" class="form-button-submit button icon solid fa-envelope">Send Message</a>
											</div>
										</div>
									</form>
								</section>
							</div>
							<div class="col-6 col-12-medium">
								<section>
									<p>헬프펫은 개인이 운영하는 보호시설입니다. 나의 반려동물이 지내는 공간으로 생각하고 개인 사정, 유기 등에 의한 동물들을 보호 및 
									생활할 수 있도록 따듯한 보금자리가 되어주고 있습니다. 입양 또는 후원에 대해 고민중이신가요? 궁금한 사항이 있으시면 
									글을 남겨주세요. 친절히 답변해드립니다.</p>
									<div class="row">
										<div class="col-6 col-12-small">
											<ul class="icons">
												<li class="icon solid fa-home">
													인천 동구 재능로 178<br />
													헬프펫, TN 04568<br />
													대한민국
												</li>
												<li class="icon solid fa-phone">
													070-7808-4211
												</li>
												<li class="icon solid fa-envelope">
													<a href="#">info@help_pet</a>
												</li>
											</ul>
										</div>
										<div class="col-6 col-12-small">
											<ul class="icons">
												<li class="icon brands fa-twitter">
													<a href="#">@help_pet</a>
												</li>
												<li class="icon brands fa-instagram">
													<a href="#">instagram.com/help_pet</a>
												</li>
												<li class="icon brands fa-dribbble">
													<a href="#">dribbble.com/help_pet</a>
												</li>
												<li class="icon brands fa-facebook-f">
													<a href="#">facebook.com/help_pet</a>
												</li>
											</ul>
										</div>
									</div>
								</section>
							</div>
						</div>
					
					<div id="copyright" class="container">
						<ul class="links">
							<li>&copy; Untitled. All rights reserved.</li>
						</ul>
					</div>
				</section>

		<!-- Scripts -->
			<script src="assets/js/jquery.min.js"></script>
			<script src="assets/js/jquery.dropotron.min.js"></script>
			<script src="assets/js/browser.min.js"></script>
			<script src="assets/js/breakpoints.min.js"></script>
			<script src="assets/js/util.js"></script>
			<script src="assets/js/main.js"></script>

	</body>
</html>
