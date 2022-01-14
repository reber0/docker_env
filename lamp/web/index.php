<?php
/*
 * @Author: reber
 * @Mail: reber0ask@qq.com
 * @Date: 2021-03-16 11:24:33
 * @LastEditTime: 2022-01-14 18:09:15
 */
    $conn = mysqli_connect("mysql", "root", "root", "test_db");
    if(!$conn)
        die('Could not connect: ' . mysqli_error($conn));

    if (isset($_GET['id'])) {
        $id = $_GET['id'];
        $result = mysqli_query($conn, "select * from msg where id=".$id);
        $rows = mysqli_fetch_assoc($result);

        if ($rows) {
            foreach ($rows as $key => $value) {
                echo $key.'----'.$value.'<br/>';
            }
        } else {
            echo mysqli_error($conn);
        }
    } else {
        echo "please input id";
    }

    mysqli_close($conn);
?>
