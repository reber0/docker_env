<?php
    $link = mysql_connect("mysql", "root", "root");
    if(!$link)
        die('Could not connect: ' . mysql_error());
    else
        echo "Connection mysql successful";
    mysql_close($link);
?>