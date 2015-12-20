<?php
$msg = "Order List \n";
$msg .= "Order From:    $_POST[order_name]\n";
$msg .= "Deliver Address:  $_POST[address]\n";
$msg .= "Order:     $_POST[food]\n";

$msg .= "Special Message:     $_POST[message]\n";
$to = "srubin45@comcast.net";
$subject = "Web Site Feedback - Fog";
$mailheaders = "From: My Web Site <> \n";

mail($to, $subject, $msg, $mailheaders);
?>

<!DOCTYPE html>
<html lang="en">

<head>

<meta charset="utf-8">

<title>The following email has been sent to Steve Rubin</title>

<style type="text/css">

body {background: #eee;}

#box {background-color: white; border: 1px solid; width: 400px;}

</style>

</head>

<body>

<h3>The following email has been sent to Steve Rubin:
<br>(php script uses Checkboxes)
</h3>


<div id="box">

<p><b>Your Name: </b>
<?php echo "$_POST[order_name]"; ?>
<br><br>

<b>Your Address: </b>
<?php echo "$_POST[address]"; ?>
<br><br>

<b>Your Order: </b>
<?php echo "$_POST[food]"; ?>
<br><br>


<b>Your Message:</b>
<?php echo "$_POST[message]"; ?>
</p>


</div> 
</body>
</html>