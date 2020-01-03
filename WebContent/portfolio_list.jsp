<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">
  	
   <!-- Bootstrap core CSS -->
  <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

  <!-- Custom fonts for this template -->
  <link href="https://fonts.googleapis.com/css?family=Catamaran:100,200,300,400,500,600,700,800,900" rel="stylesheet">
  <link href="https://fonts.googleapis.com/css?family=Lato:100,100i,300,300i,400,400i,700,700i,900,900i" rel="stylesheet">

  <!-- Custom styles for this template -->
  <link href="css/one-page-wonder.min.css" rel="stylesheet">
<title>Folio list</title>
<script
  src="https://code.jquery.com/jquery-3.4.1.slim.min.js"
  integrity="sha256-pasqAKBDmFT4eHoN2ndd6lN370kFiGUFyTiUHWhU7k8="
  crossorigin="anonymous"></script>
  <script type="text/javascript">
  	$(function(){
  	 	$("#portfolioList :button").click(function() {
			location.href = "portfolio_remove.do?no=" + $(this).attr("data-no");
		});
 
  	});

  </script>
</head>
<body>
<nav class="navbar navbar-expand-lg navbar-dark navbar-custom fixed-top">
    <div class="container">
      <a class="navbar-brand" href="#">Folio list</a>
      <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
      </button>
      <div class="collapse navbar-collapse" id="navbarResponsive">
        <ul class="navbar-nav ml-auto">
          <li class="nav-item">
            <a class="nav-link" href="#">create</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="#">list</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="#">login</a>
          </li>
        </ul>
      </div>
    </div>
  </nav>
   <header class="masthead text-center text-white">
    <div class="masthead-content">
      <div class="container">
        <h1 class="masthead-heading mb-0">Folio list</h1>
        <a href="#" class="btn btn-primary btn-xl rounded-pill mt-5">Learn More</a>
      </div>
    </div>
    <div class="bg-circle-1 bg-circle"></div>
    <div class="bg-circle-2 bg-circle"></div>
    <div class="bg-circle-3 bg-circle"></div>
    <div class="bg-circle-4 bg-circle"></div>
  </header>
  	<br />
	<br />
	<section>
    <div class="container" >
		<form action="portfolio_search.do" method = "post">
		  <div class="form-group">
		    <label for="exampleInputEmail1"><h2>Search</h2></label>
		    <input type="text" name="title" class="form-control" id="exampleInputEmail1" 
		    	placeholder="제목을 입력하세요." value="${param.title}"  style="width:80%; display:inline-block">
		  	<input type="submit" value= "검색">
		  </div>
		</form>
	</section>


<table class="table table-hover">
	<thead>
		<tr>
			<th>번호</th>
			<th>제목</th>
			<th>시작일</th>
			<th>종료일</th>
			<th>자료수</th>
			<th>대표자</th>
			<th>참여자수</th>
			<th></th>
		</tr>	
	</thead>

	<tbody  id = "portfolioList">
	<c:forEach items="${list}" var="portfolio">
			<tr>
					<td>${portfolio.no}</td>
					<td><a href="portfolio_detail.do?no=${portfolio.no}">${portfolio.title}</a></td>
					<td>${portfolio.startDate}</td>
					<td>${portfolio.endDate}</td>
					<td>${portfolio.dataCount}</td>
					<td>${portfolio.leader}</td>
					<td>${portfolio.memberCount}</td>
					<td><input type="button" value="삭제" data-no="${portfolio.no}"/> </td>
			</tr>
	</c:forEach>
		
	</tbody>
	

</table>
 <!-- Footer -->
  <footer class="py-5 bg-black">
    <div class="container">
      <p class="m-0 text-center text-white small">Copyright &copy; Your Website 2019</p>
    </div>
    <!-- /.container -->
  </footer>
</body>
</html>