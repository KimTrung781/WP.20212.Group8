<html><head><title>Search Results</title></head><body>
        <?php
        $host = 'localhost:3306';
        $user = 'root';
        $passwd = '';
        $database = 'test';
        $connect = mysqli_connect($host, $user, $passwd);
        $table_name = 'Products';
        print '<font size="5" color="blue">';
        print "Update Results for Table $table_name</font><br>";
        $Product = $_POST['Product'];
        $query = "UPDATE $table_name SET Numb = Numb - 1 WHERE  (Product_desc = '$Product')";
        print "The query is <i>$query</i> <br>";
        mysqli_select_db($connect,$database);
        $results_id = mysqli_query($connect,$query);
        if ($results_id) {
            $query = "SELECT * FROM $table_name";
            $result = mysqli_query($connect,$query);
            if ($result) {
                print '<table border=1>';
                print '<th>Num<th>Product<th>Cost<th>Weight<th>Count';
                while ($row = mysqli_fetch_row($result)) {
                    print '<tr>';
                    foreach ($row as $field) {
                        print "<td>$field</td> ";
                    }print '</tr>';
                }
            } else {
                die("Query=$query failed!");
            }
        } else {
            die("query=$Query Failed");
        }
        mysqli_close($connect);
?> </body></html>
