<?php
    $conn = mysqli_connect("mysql5.5", "root", "root", "rtest");
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
