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

		$comment = $_POST["comment_text"];
		$q = "insert into Comments (comment) values ('$comment')"; //  결과 저장
		//쿼리문, reservation이라는 테이블에 값을 넣기위한 SQL문
		$result = $db->query($q);

		echo "<script> 
　　　　		alert('코멘트를 성공적으로 보냈습니다!'); 
		document.location.href='http://yommi1121.dothome.co.kr/music.html';
　　　		</script>";
	?> 	
</body>
</html>