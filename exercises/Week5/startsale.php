<html><head><title>Inventory Management</title></head><body>
    <?php
        $host = 'localhost:3306';
        $user = 'root';
        $passwd = '';
        $database = 'test';
        $connect = mysqli_connect($host, $user, $passwd);
        $table_name = 'Products';
        mysqli_select_db($connect,$database);
        print '<font size="5" color="blue">';
        print "Select Product We Just Sold</font><br>";
        print "<form action='sale.php' method='post'>";
        $query = "SELECT Product_desc FROM $table_name WHERE Numb <> 0";
        $results_id = mysqli_query($connect,$query);
        $products = Array();
        while($storeArray = mysqli_fetch_array($results_id, MYSQLI_ASSOC)){
            $products[] = $storeArray['Product_desc'];
        }
        foreach ($products as $product){
            print "$product: <input type='radio' name='Product' value='$product'>";
        }
        print "<br /><input type='submit' value='Submit'>";
        print "<input type='reset' value='Reset'>";
        print "</form>";
        $query = "SELECT * FROM $table_name";
        print "The query is <i>$query </i><br>";
        $results_id = mysqli_query($connect,$query);
        if ($results_id) {
            print '<table border=1>';
            print '<th>Num<th>Product<th>Cost<th>Weight<th>Count';
            while ($row = mysqli_fetch_row($results_id)) {
                print '<tr>';
                foreach ($row as $field) {
                    print "<td>$field</td> ";
                }print '</tr>';
            }
        } else {
            die("Query=$query failed!");
        }mysqli_close($connect);
    ?> </table></body></html>



