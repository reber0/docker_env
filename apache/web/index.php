<?php
    $conn = mysql_connect("mysql", "root", "root");
    if(!$conn)
        die('Could not connect: ' . mysql_error());
    mysql_select_db('rtest',$conn);

    if (isset($_GET['id'])) {
        @$id = $_GET['id'];
        $result=mysql_query("select * from msg where id=".$id);
        $rows = @mysql_fetch_assoc($result);

        if ($rows) {
            foreach ($rows as $key => $value) {
                echo $key.'----'.$value.'<br/>';
            }
        } else {
            echo mysql_error();
        }
    } else {
        echo "please input id";
    }

    mysql_close($conn);
?>
