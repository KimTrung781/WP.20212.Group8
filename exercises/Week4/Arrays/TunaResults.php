<html>
<head>
<meta charset="utf-8">
<title>Untitled Document</title>
</head>

<body>
	<font size="+4" color="blue">Tuna Cafe Result received</font>
	<?php
	$menu = array('Tuna Casserole','Tuna Sandwich','Tuna Pie','Grilled Tuna','Tuna Surprise');
	$prefer = $_GET["prefer"];
	if(count($prefer)==0){
		print("Oh no! Please pick something as your favourite!");
	}else{
		print("<br>Your selection were <ul>");
		foreach($prefer as $item){
			print("<li>$menu[$item]</li>");
		}
		print("<ul>");
	}
	?>
</body>
</html>
