<html>
    <style>
        .back {
            background-image: url('background.jpg');
        }
    </style>
    <head><title> Receiving Input </title></head>
    <body>
        <div class="back">
        <font size=5> Thank You: Got Your Input. </font>
        <?php
            $Name = $_GET["Name"];
            $Class = $_GET["Class"];
            $University = $_GET["University"];
            $Language = $_GET["Language"];
            $choice1 = $_GET["choice1"];
            $choice2 = $_GET["choice2"];
            print ("<br> Your Name is $Name");
            print ("<br> you belong to class $Class");
            print ("<br> You've been studying at $University");
            print ("<br> Your favorite language is $Language");
            print ("<br><br> We will $choice1 $choice2 and contact you when the interview is available.")
        ?> 
        click here to know more about us
        <form action="rickroll.php">
            <input type="submit" value="click me">
        </form>
        </div>
    </body>
</html>