
<?php
$conn = mysqli_connect("localhost","root","","healthbot");

if($conn){
    $user_messages = mysqli_real_escape_string($conn, $_POST['messageValue']);

    $query = "SELECT * FROM healthchat WHERE messages LIKE '%$user_messages%'";
    $runQuery = mysqli_query($conn, $query);

    if(mysqli_num_rows($runQuery) > 0){
        $result = mysqli_fetch_assoc($runQuery);
        echo $result['response'];
    }else{
        echo "Sorry can't process this input! Try again!";
    }
}else{
    echo "Connection Failed " . mysqli_connect_errno();
}
?>
