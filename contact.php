<!DOCTYPE HTML>
<html>
<body>	
	<?php
		$db = new mysqli("localhost","yommi1121","tnreodudal16","yommi1121");//db연결
		mysqli_set_charset($db,"utf8");

		if (mysqli_connect_errno()) {
		print "Error: Could not connect to database server.";
		exit;
		}

		$name = $_POST["name"];
		$job = $_POST["job"];
		$tel = $_POST["tel"];
		$email = $_POST["mail"];
		$message = $_POST["message"];

		$q = "insert into Contact (name, job, phonenumber, email, message) values ('$name','$job','$tel','$email','$message')"; //  결과 저장
		//쿼리문, Contact이라는 테이블에 값을 넣기위한 SQL문
		$result = $db->query($q); //sql을 실행하는 실행문, 쿼리 실행 result는 각각의 값을 넣은 것

		echo "<script> 
　　　　		alert('제출되었습니다!'); 
		document.location.href='http://yommi1121.dothome.co.kr/contact.html';
　　　		</script>";
	?> 	
</body>
</html>