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
<title>Detail folio</title>
</head>
<body>
<nav class="navbar navbar-expand-lg navbar-dark navbar-custom fixed-top">
    <div class="container">
      <a class="navbar-brand" href="#">Detail folio</a>
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
        <h1 class="masthead-heading mb-0">Detail folio</h1>
        <a href="#" class="btn btn-primary btn-xl rounded-pill mt-5">Learn More</a>
      </div>
    </div>
    <div class="bg-circle-1 bg-circle"></div>
    <div class="bg-circle-2 bg-circle"></div>
    <div class="bg-circle-3 bg-circle"></div>
    <div class="bg-circle-4 bg-circle"></div>
  </header>

        <table class="table">
	<br />
	<br />
	<section>
    <div class="container">
        <form>
		  <div class="form-group">
		    <label for="exampleInputEmail1"><h2>title</h2></label>
		    <div>${portfolio.title}</div>
		  </div>  
		 <div class="form-group">
		    <label for="exampleInputEmail1"><h2>leader</h2></label>
		     <div>${portfolio.leader}</div>
		  </div>  
		  <div class="form-group">
		    <label for="exampleInputEmail1"><h2>member</h2></label>
		     <div>${portfolio.member}</div>
		     <div>총명:${portfolio.memberCount}</div>
		  </div>  
		  <div class="form-group">
		    <label for="exampleInputEmail1"><h2>content</h2></label>
		     <div>${portfolio.content}</div>
		 <div class="form-group">
		    <label for="exampleInputEmail1"><h2>시작일</h2></label>
		     <div>${portfolio.startDate}</div>
		  </div>   
		  <div class="form-group">
		    <label for="exampleInputEmail1"><h2>마감일</h2></label>
		     <div>${portfolio.endDate}</div>
		  </div>   
		   <div class="form-group">
		  <c:forEach items ="${portfolio.dataList}" var="file">
 		<img src="uploadFileSave/${file.realFileName}" width="200px" height="200px"/>
 		<br/>
 	</c:forEach>
 			</div>   
		</form>
	</div>     
</section>
 	
</body>
</html>