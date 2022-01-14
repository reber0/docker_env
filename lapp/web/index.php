<?php
/*
 * @Author: reber
 * @Mail: reber0ask@qq.com
 * @Date: 2022-01-14 15:22:37
 * @LastEditTime: 2022-01-14 18:16:52
 */
    $conn = pg_connect("host=postgre port=5432 dbname=rtest user=root password=123456");
    if(!$conn)
        die('Could not connect: ' . pg_last_error($conn));

    if (isset($_GET['id'])) {
        $sql = "select * from account where id=".$_GET["id"];
        $result = pg_query($conn, $sql);
        $rows = pg_fetch_assoc($result);
        if ($rows) {
            foreach ($rows as $key => $value) {
                echo $key.'----'.$value.'<br/>';
            }
        } else {
            echo pg_last_error($conn);
        }

        pg_free_result($result);
    } else {
        echo "please input id";
    }

    pg_close($conn);
?>
