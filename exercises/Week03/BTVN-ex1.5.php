<html>
    <head><title>DateTime</title></head>
    
    <body><font size="5" color="blue"> Enter your name and select date and time for the appoinment</font>
        <br>
        <form action="<?php echo $_SERVER['PHP_SELF']?>" method="GET">
        
            <table style="border: 1px inset black; border-radius: 10px">
                <tr>
                    <td>Your name:</td>
                    <td colspan="3"><input type="text" name="Name"></td>
                </tr>
                <tr>
                    <td>Date:</td>
                    <td style="width: 50px"><select name="day">
                        <?php
                            for($i=0; $i<=31; $i++){
                                print("<option>$i</option>");
                            }
                        ?>
                        </select>
                    </td>
                    <td style="width: 50px"><select name="month">
                        <?php
                            for($i=1; $i<=12; $i++){
                                print("<option>$i</option>");
                            }
                        ?>
                        </select>
                    </td>
                    <td style="width: 50px"><select name="year">
                        <?php
                            for($i=2000; $i<=2040; $i++){
                                print("<option>$i</option>");
                            }
                        ?>
                        </select>
                    </td>
                </tr>
                <tr>
                    <td>Time:</td>
                    <td align="left"><select name="hour">
                        <?php
                            for($i=0; $i<=24; $i++){
                                print("<option>$i</option>");
                            }
                        ?>
                        </select>
                    </td>
                    <td align="left"><select name="minute">
                        <?php
                            for($i=0; $i<=24; $i++){
                                print("<option>$i</option>");
                            }
                        ?>
                        </select>
                    </td>
                    <td align="left"><select name="second">
                        <?php
                            for($i=0; $i<=60; $i++){
                                print("<option>$i</option>");
                            }
                        ?>
                        </select>
                    </td>
                </tr>
                <tr>
                    <td align="right"> <input type="submit" value="Submit"></td>
                    <td align="left">  <input type="reset" value="Reset"></td>
                </tr>
            </table>
            
        </form>
        <?php
            if (array_key_exists("Name", $_GET)){
                $name = $_GET["Name"];
                $day = $_GET["day"];
                $month = $_GET["month"];
                $year = $_GET["year"];
                $hour = $_GET["hour"];
                $minute = $_GET["minute"];
                $second = $_GET["second"];
                if($day >= 29 && $month == 2 && ($year%4 != 0  || ($year%100 == 0 && $year%400 != 0))){
                    print("error, february on non leap years only have 28 days ");
                }
                elseif ($day >= 30 && $month == 2 && ($year%400 == 0 ||($year%4 == 0 && $year%100 != 0))) {
                    print("error, february on leap years only have 29 days ");
                }
                elseif ($day >= 31 && ( $month == 4 || $month == 6 || $month == 9 || $month == 11 )) {
                    print("error, april, june, september and november only have 30 days");
                }
                else{
                    print("Hi $name!");
                    print("<br> You have choose to have an apoinment on ");
                    if ($hour >= 12){
                        $hour = $hour-12;
                        print("$hour:$minute:$second PM");
                    }
                    else {
                        print("$hour:$minute:$second AM");
                    }
                    print(", $day/$month/$year");
                }
            }
        ?>
    </body>
</html>