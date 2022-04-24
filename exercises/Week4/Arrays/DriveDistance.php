<!doctype html>
<html>
	<head>
		<title>Distance from Chicago!</title>
	</head>
	<body>
		<h1>Welcome to the Distance Calculator</h1>
		<p>This page calculates the distance from Chicago.</p><hr>
		<form action="CheckDistance.php" method="POST">
			<label for="destination">Select a destination</label><br>
			<select name="destination[]" size=5 multiple>
				<option>Boston</option>
				<option>Dallas</option>
				<option>Miami</option>
				<option>Nashville</option>
				<option>Las Vegas</option>
				<option>Pittsburgh</option>
				<option>San Francisco</option>
				<option>Toronto</option>
				<option>Washington, DC</option>
			</select>
			<br>
			<input type="submit" value="Submit">
			<input type="reset" value="Reset">
		</form>
	</body>
</html>