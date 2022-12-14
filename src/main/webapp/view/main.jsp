<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="contextPath" value="${pageContext.request.contextPath}" />
<c:set var="recipes" value="${recipeArticles}" />
<c:set var="imgPath" value="C:/board/recipe_image/" />

<html>
<jsp:include page="header.jsp"></jsp:include>


<div id="carouselExampleIndicators" class="carousel slide test00 h-30"
	data-bs-ride="carousel">
	<div class="carousel-indicators">
		<button type="button" data-bs-target="#carouselExampleIndicators"
			data-bs-slide-to="0" class="active" aria-current="true"
			aria-label="Slide 1"></button>
		<button type="button" data-bs-target="#carouselExampleIndicators"
			data-bs-slide-to="1" aria-label="Slide 2"></button>
		<button type="button" data-bs-target="#carouselExampleIndicators"
			data-bs-slide-to="2" aria-label="Slide 3"></button>
	</div>
	<div class="carousel-inner">
		<div class="carousel-item active">
			<img
				src="http://hohk.dothome.co.kr/load/data/kt180401/166662296824983200.png"
				class="d-block " alt="...">
		</div>
		<div class="carousel-item">
			<img
				src="http://hohk.dothome.co.kr/load/data/kt180401/166662854954777184.jpg"
				class="d-block " alt="...">
		</div>
		<div class="carousel-item">
			<img
				src="http://hohk.dothome.co.kr/load/data/kt180401/166662962517025088.jpg"
				class="d-block " alt="...">
		</div>
	</div>
	<button class="carousel-control-prev" type="button"
		data-bs-target="#carouselExampleIndicators" data-bs-slide="prev">
		<span class="carousel-control-prev-icon" aria-hidden="true"></span> <span
			class="visually-hidden">Previous</span>
	</button>
	<button class="carousel-control-next" type="button"
		data-bs-target="#carouselExampleIndicators" data-bs-slide="next">
		<span class="carousel-control-next-icon" aria-hidden="true"></span> <span
			class="visually-hidden">Next</span>
	</button>
</div>


<c:if test="${recipeArticles == null }">
	<c:redirect url="../recipe/setMainPage.do" />
</c:if>
<!-- ?????????01 -->
<div class="mainContent">
	<ul class="mainTopIcon">
		<li><a href=""><img src="../assets/images/01.svg" alt=""><br>??????/??????</a></li>
		<li><a href=""><img src="../assets/images/02.svg" alt=""><br>?????????</a></li>
		<li><a href=""><img src="../assets/images/03.svg" alt=""><br>?????????</a></li>
		<li><a href=""><img src="../assets/images/04.svg" alt=""><br>??????</a></li>
		<li><a href=""><img src="../assets/images/05.svg" alt=""><br>??????</a></li>
		<li><a href=""><img src="../assets/images/06.svg" alt=""><br>?????????</a></li>
		<li><a href=""><img src="../assets/images/07.svg" alt=""><br>????????????</a></li>
		<li><a href=""><img src="../assets/images/08.svg" alt=""><br>?????????</a></li>
		<li><a href=""><img src="../assets/images/09.svg" alt=""><br>????????????</a></li>
		<li><a href=""><img src="../assets/images/09.svg" alt=""><br>???????????????</a></li>
	</ul>

	<div class="mainContent_01">
		<div class="con01_title">
			<p>New</p>
			<p>Recipe</p>
			<p>?????? ????????? ???????????? ??????????????????</p>
			<p>
				<a href="">???????????? <img src=".." alt="" width="14" height="14"></a>
			</p>
		</div>
			
			<c:forEach var="recipe" items="${recipes }">
			<div class="con01_recipe">
				<a href="${contextPath}/recipe/viewArticle.do?articleNO=${recipe.articleNO}"
					display=block>
					<div class="con01_img">
						<input type="hidden" name="originalFileName" value="${recipe.imageFileName }" /> 
						<img src="${contextPath}/download2.do?articleNO=${recipe.articleNO}&imageFileName=${recipe.imageFileName}"
							id="preview" width="220" height="150" /> 
					</div>
					<p class="title"> ${recipe.title }</p>
				</a>
			</div>
		</c:forEach>
	</div>

</div>
<!--mainContent ???-->




<!-- mainContent02 ??????-->
<div class="mainContent_02">
	<div class="mainContent02_con">
		<div class="mainContent02_img">
			<img src="../assets/images/con2_01.png" alt="" width="350"
				height="350">
		</div>

		<div>
			<div class="mainContent02_title">
				????????? ????????? ??????~<br>????????? ??? ?????? ?????? ?????? ?????????
			</div>
			<p>
				<img src="../assets/images/con2_02.png" alt="" width="250"
					height="230">
			</p>
			<p>
				<img src="../assets/images/con2_03.png" alt="" width="250"
					height="230">
			</p>
			<p>
				<img src="../assets/images/con2_04.png" alt="" width="250"
					height="230">
			</p>

		</div>
	</div>
</div>
<!-- mainContent02 ??????-->



<!-- mainContent03 ?????? -->

<div class="mainContent_03">
	<div class="mainContent_03_banner">
		<img src="../assets/images/banner01.jpg" alt="" width="580">
	</div>
	<div class="mainContent_03_banner">
		<img src="../assets/images/banner02.jpg" alt="" width="580">
	</div>
</div>

<!-- mainContent03 ??? -->

<!-- mainContent04 ?????? -->
<div class="mainContent_04">
	<h3>????????? ?????? ??? ?????? ????????? ?????? ???????????? ?????????</h3>
	<div class="minRecipe">
		<div class="img">
			<img src="../assets/images/con4_01.jpg" alt="" width="130"
				height="130">
		</div>
		<h6>????????? ?????? ??????</h6>
		<p>
			?????????, ??????, ???????????? ????????? ?????? ?????? ??????!<br>??????: ???????????? ?????? 1L, ???????????? 15g, ???????????????
			1???
		</p>
	</div>
	<div class="minRecipe">
		<div class="img">
			<img src="../assets/images/con4_02.jpg" alt="" width="130"
				height="130">
		</div>
		<h6>????????? ????????? ?????? ?????????</h6>
		<p>
			????????????????????? ??? ??? ?????? ????????? ??????!<br>??????: ????????? 3???, ????????? 1???, ??? ?????? 10???
		</p>
	</div>
	<div class="minRecipe">
		<div class="img">
			<img src="../assets/images/con4_03.jpg" alt="" width="130"
				height="130">
		</div>
		<h6>???????????? ?????? ?????? ????????? ???????????? ???</h6>
		<p>
			????????? ????????? ????????? ???????????? ??? ?????? ??????!<br>???????????? ??????????????? ?????? ???????????? ?????????.
		</p>
	</div>
	<div class="minRecipe">
		<div class="img">
			<img src="../assets/images/con4_04.jpg" alt="" width="130"
				height="130">
		</div>
		<h6>????????? ?????? ????????????</h6>
		<p>
			??????????????? ??????, ???????????? ????????? ?????? ??????!<br>???????????? ???????????? ???????????? ???????????? ?????? ????????? ???????????? ?????????
			?????? ??? ????????????.
		</p>
	</div>
</div>
<!-- mainContent04 ??? -->






<jsp:include page="footer.jsp"></jsp:include>
<html>