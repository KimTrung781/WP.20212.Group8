<?php
    function datecheck($day,$month,$year){
        if($day >= 29 && $month == 2 && ($year%4 != 0  || ($year%100 == 0 && $year%400 != 0))){
            print("error, february on non leap years only have 28 days ");
            return 1;
        }
        elseif ($day >= 30 && $month == 2 && ($year%400 == 0 ||($year%4 == 0 && $year%100 != 0))) {
            print("error, february on leap years only have 29 days ");
            return 1;
        }
        elseif ($day >= 31 && ( $month == 4 || $month == 6 || $month == 9 || $month == 11 )) {
            print("error, april, june, september and november only have 30 days");
            return 1;
        }
        else{
            return 0;
        }
        return 1;
    }
?>


<html>
    <head><title>DateTime</title></head>
    
    <body><font size="5" color="blue"> Enter your name and select date and time for the appoinment</font>
        <br>
        <form action="<?php echo $_SERVER['PHP_SELF']?>" method="GET">
        
            <table style="border: 1px inset black; border-radius: 10px">
                <tr>
                    <td>name1:</td>
                    <td colspan="3"><input type="text" name="Name1"></td>
                </tr>
                <tr>
                    <td>DOB:</td>
                    <td style="width: 50px"><select name="day1">
                        <?php
                            for($i=1; $i<=31; $i++){
                                print("<option>$i</option>");
                            }
                        ?>
                        </select>
                    </td>
                    <td style="width: 50px"><select name="month1">
                        <?php
                            for($i=1; $i<=12; $i++){
                                print("<option>$i</option>");
                            }
                        ?>
                        </select>
                    </td>
                    <td style="width: 50px"><select name="year1">
                        <?php
                            for($i=2000; $i<=2040; $i++){
                                print("<option>$i</option>");
                            }
                        ?>
                        </select>
                    </td>
                </tr>
                <tr>
                    <td>name2:</td>
                    <td colspan="3"><input type="text" name="Name2"></td>
                </tr>
                <tr>
                    <td>DOB:</td>
                    <td style="width: 50px"><select name="day2">
                        <?php
                            for($i=1; $i<=31; $i++){
                                print("<option>$i</option>");
                            }
                        ?>
                        </select>
                    </td>
                    <td style="width: 50px"><select name="month2">
                        <?php
                            for($i=1; $i<=12; $i++){
                                print("<option>$i</option>");
                            }
                        ?>
                        </select>
                    </td>
                    <td style="width: 50px"><select name="year2">
                        <?php
                            for($i=2000; $i<=2040; $i++){
                                print("<option>$i</option>");
                            }
                        ?>
                        </select>
                    </td>
                </tr>
                <tr>
                    <td align="right"> <input type="submit" value="Submit"></td>
                </tr>
            </table>
            
        </form>
        <?php
            if (array_key_exists("Name1", $_GET)){
                $name1 = $_GET["Name1"];
                $day1 = $_GET["day1"];
                $month1 = $_GET["month1"];
                $year1 = $_GET["year1"];
                $flag1 = datecheck($day1, $month1, $year1);
                if (array_key_exists("Name2", $_GET)){
                    $name2 = $_GET["Name2"];
                    $day2 = $_GET["day2"];
                    $month2 = $_GET["month2"];
                    $year2 = $_GET["year2"];
                    $flag2 = datecheck($day2, $month2, $year2);
                    if($flag1==0&&$flag2==0){
                        $date1=date_create("$day1-$month1-$year1");
                        $date2=date_create("$day2-$month2-$year2");
                        echo (date("l jS \of F Y",strtotime("$year1-$month1-$day1")));
                        echo "<br>";
                        echo (date("l jS \of F Y",strtotime("$year2-$month2-$day2")));
                        echo "<br>";
                        $diff=date_diff($date1,$date2);
                        echo $diff->format("diffrence in days: %a days <br>");
                        echo $diff->format("diffrence in years: %y years <br>");
                        $dateNow=time();
                        $diff1=date_diff($date1,date_create(date("Y-m-d",$dateNow)));
                        echo $diff1->format("$name1's age: %y years old. <br>");
                        $diff2=date_diff($date2,date_create(date("Y-m-d",$dateNow)));
                        echo $diff2->format("$name2's age: %y years old.");
                    }
                }
            }
            
        ?>
    </body>
</html>