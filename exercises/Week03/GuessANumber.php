<html>
    <head>
        <title>Guess A Number Game</title>
    </head>
    <body>
        <h2>Please Enter A Number !</h2>
        <form action="" method="POST">
            <input type=text name="i1">
            <input type="submit" value="Submit">
        </form>

        <?php
        $randomNum = 34;
        $inputNum = $_POST['i1'];

        function compare ($inputNum, $randomNum){
            if ($inputNum > $randomNum){
                print "Wrong. Please try a lower number.";
                return 0;
            }else if ($inputNum < $randomNum){
                print "Wrong. Please try a higher number.";
                return 0;
            }
            print "Your answer is correct !";
            return 1;
        }

        $validNum = is_numeric($inputNum);
        if ($validNum == 1){
            $result = compare($inputNum, $randomNum);
        }else {
            print "You must enter a number !";
        }
        ?>
    </body>
</html>