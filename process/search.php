<?php
include '../bootstrap/init.php';
usleep(500000);//delay
if (!isAjaxRequest()) {
    diePage("Invalid Request!");
}
$keyword = $_POST['keyword'];
if (!isset($keyword) or empty($keyword)) {
    die("شروع به تایپ کنید...");
}
$locations = getLocations(['keyword' => $keyword]);
if(sizeof($locations)==0){
    die("نتیجه ای یافت نشد");
}
foreach ($locations as $loc) {
    echo "<a href='".BASE_URL."?loc=$loc->id'> <div class='result-item' data-lat='$loc->lat' data-lng='$loc->lng' data-lng='$loc->id'>
       <span class='loc-type'>".locationTypes[$loc->type]."</span>
       <span class='loc-title'>$loc->title</span>
    </div></a>
";
}