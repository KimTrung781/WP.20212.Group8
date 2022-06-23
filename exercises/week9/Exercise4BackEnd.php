<?php
header("Content-Type: text/xml");

$people = array("popcorn","coke","pepsi","french fries","fillet /'o fish","mcDonalds","kfc","fanta","redbull","fried rice","kebab","ice cream","sausage","pho",);

$query = $_GET['query'];
echo "<?xml version=\"1.0\"?>\n";
echo "<names>\n";
foreach($people as $v)
{
    if (stristr ($v, $query)){
        echo "<name>$v</name>\n";
    }
}
    echo '</names>';
?>