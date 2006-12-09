<?php
// get host
$parts = explode(".", $_SERVER['REMOTE_ADDR']);
// send right addy
if (($parts[0] == "192") || ($parts[0] == "10")) {
	echo "rtsptext rtsp://192.168.0.2:554/".$_GET['movie'];
}
else {
	echo "rtsptext rtsp://labber.ath.cx:554/".$_GET['movie'];
}
?>