<?php
    function radians_to_degrees($radian){
        return $radian*57.2957795;
    }
    
    function degrees_to_radians($degrees){
        return $degrees/57.2957795;
    }
?>

<html>
    <head><title>Converter</title></head>
    <body>
        <form action="<?php echo $_SERVER['PHP_SELF']?>" method="GET">
            Degrees:
            <input type="text" name="degree"> 
            <input type="submit" value="Submit">
        </form>
        
        <form action="<?php echo $_SERVER['PHP_SELF']?>" method="GET">
            Radians:
            <input type="text" name="radian">
            <input type="submit" value="Submit">
        </form>
        
        <?php
            if (array_key_exists("degree", $_GET)){
                $degrees = $_GET["degree"];
                $radians = degrees_to_radians($degrees);
                print("$degrees degrees to $radians radians.");
            }
            if (array_key_exists("radian", $_GET)){
                $radians = $_GET["radian"];
                $degrees = radians_to_degrees($radians);
                print("$radians radians to $degrees degrees.");
            }
            
        ?>
    </body>
</html>