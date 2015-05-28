<?php

$hostname = "localhost";
$username = "ksauser";
$password = "Maxipereyra!2";
$dbname = "ksaindoorsoccerleague";



if (isset($_GET["StartWatch"])) {
	
	
	StartWatch($_GET["StartWatch"]);
	
}else if (isset($_GET["StopWatch"])) {

	StopWatch($_GET["StopWatch"]);
	
}else if (isset($_GET["ResetClock"])) {
	
	ResetBoard();
	
}else if (isset($_GET["ResetTime"])){
	
ResetTime();	
	
} else if (isset($_GET["SetClock"])) {

	SetWatch($_GET["SetClock"],$_GET["Team1"],$_GET["Team2"],$_GET["Team1Emblem"],$_GET["Team2Emblem"]);

}else if (isset($_GET["GoalChange"])){
	
	GoalChange($_GET["TeamID"],$_GET["UpDown"]);
	
}else if (isset($_GET["FoulsChange"])){
	
	FoulChange($_GET["TeamID"],$_GET["UpDown"]);
	
}else if (isset($_GET["ResetFouls"])){
	
	ResetFouls();
	
}else if (isset($_GET["GetEmblems"])){
	
	
	GetEmblems();
	
}else if (isset($_GET["ActivateBuzzer"])){
	
	ActivateBuzzer();
	
}else if (isset($_GET["SetHalf"])){
	
	
	SetHalf($_GET["SetHalf"]);
	
	
}
else{
	
		
	RefreshSession();
	
}

function SetHalf($half){
	
	mysql_connect($GLOBALS['hostname'], $GLOBALS['username'], $GLOBALS['password']) OR DIE("Unable to connect to database! Please try again later.");
	mysql_select_db($GLOBALS['dbname']);
	
	$query="update `session` set Half=".$half.", IsDirty=1";
	mysql_query($query);
	
	
}

function ActivateBuzzer(){
	
	mysql_connect($GLOBALS['hostname'], $GLOBALS['username'], $GLOBALS['password']) OR DIE("Unable to connect to database! Please try again later.");
	mysql_select_db($GLOBALS['dbname']);
	
	$query="update `session` set Buzzer=1, IsDirty=1";
	mysql_query($query);
	
}

function ResetFouls(){
	
	mysql_connect($GLOBALS['hostname'], $GLOBALS['username'], $GLOBALS['password']) OR DIE("Unable to connect to database! Please try again later.");
	mysql_select_db($GLOBALS['dbname']);
	
	$query = "update `session_team` set Fouls = 0";
    mysql_query($query);	
	
	$query="update `session` set IsDirty=1";
	mysql_query($query);
	
}

function FoulChange($teamid,$updown){
	
	mysql_connect($GLOBALS['hostname'], $GLOBALS['username'], $GLOBALS['password']) OR DIE("Unable to connect to database! Please try again later.");
	mysql_select_db($GLOBALS['dbname']);
	
	$query = "select Fouls from `session_team` where ID=".$teamid;
	$result = mysql_query($query);
	
	$fouls = mysql_result($result,0,"Fouls");
	
	if($fouls==0 && $updown=="-"){}else{
	
	$query = "update `session_team` set Fouls = Fouls".$updown."1 where ID=".$teamid;
    mysql_query($query);	
	}
	
	$query="update `session` set IsDirty=1";
	mysql_query($query);
	
}

function GoalChange($teamid, $updown){
	
	mysql_connect($GLOBALS['hostname'], $GLOBALS['username'], $GLOBALS['password']) OR DIE("Unable to connect to database! Please try again later.");
	mysql_select_db($GLOBALS['dbname']);
	
	$query = "select Score from `session_team` where ID=".$teamid;
	$result = mysql_query($query);
	
	$score = mysql_result($result,0,"Score");
	
	if($score==0 && $updown=="-"){}else{
	
	$query = "update `session_team` set Score = Score".$updown."1 where ID=".$teamid;
    mysql_query($query);	
	}
	
	$query="update `session` set IsDirty=1";
	mysql_query($query);
	
}

function SetWatch($seconds,$team1,$team2,$emblemid1,$emblemid2){
	
	mysql_connect($GLOBALS['hostname'], $GLOBALS['username'], $GLOBALS['password']) OR DIE("Unable to connect to database! Please try again later.");
	mysql_select_db($GLOBALS['dbname']);
	
	$query= 'update `session` set IsReset=1, Running = 0, StartTime = "00:00:00", StoppedTime="00:00:00", IsDirty=1, GameTime='.$seconds;
	mysql_query($query);
	
	$query = "update `session_team` set EmblemID=".$emblemid1.",  Name='".$team1."' where ID=1";
	mysql_query($query);
	
	$query = "update `session_team` set EmblemID=".$emblemid2.",  Name='".$team2."' where ID=2";
	mysql_query($query);
	
	
}

function StartWatch($time){
	
	mysql_connect($GLOBALS['hostname'], $GLOBALS['username'], $GLOBALS['password']) OR DIE("Unable to connect to database! Please try again later.");
	mysql_select_db($GLOBALS['dbname']);
	
	$query = "select GameTime,StartTime, StoppedTime from `session` where `StartTime` <> '00:00:00' And StoppedTime <> '00:00:00'";
	
	$result = mysql_query($query);

	$returnrows = (mysql_num_rows($result)!=0);
	
	if($returnrows == 1){
		
		$start = mysql_result($result,0,"StartTime");
		$end = mysql_result($result,0,"StoppedTime");
		$gametime = mysql_result($result,0,"GameTime");
		$elapsed = (timeToSeconds($end)-timeToSeconds($start));
		
		$newgametime = $gametime-$elapsed;
		
		$query = "update `session` set StoppedTime='00:00:00', GameTime=".$newgametime;
	    
		mysql_query($query);
	}
	
	$query = "update `session` set Running=1, IsDirty=1, StartTime='".$time."' ";
	mysql_query($query);
	

	
}

function StopWatch($time){
	
	mysql_connect($GLOBALS['hostname'], $GLOBALS['username'], $GLOBALS['password']) OR DIE("Unable to connect to database! Please try again later.");
	mysql_select_db($GLOBALS['dbname']);
	
	$query = "update `session` set Running=0, IsDirty=1, StoppedTime='".$time."'";
	mysql_query($query);
	
	
}

function ResetBoard(){
	
	mysql_connect($GLOBALS['hostname'], $GLOBALS['username'], $GLOBALS['password']) OR DIE("Unable to connect to database! Please try again later.");
	mysql_select_db($GLOBALS['dbname']);
	
	$query="update `session` set GameTime=0, StartTime='00:00:00', StoppedTime='00:00:00', Running = 0,IsDirty=1";
	mysql_query($query);
	
	$query="update `session_team` set Name='',Score=0,Fouls=0,EmblemID=0";
	mysql_query($query);

}

function ResetTime(){
	
	mysql_connect($GLOBALS['hostname'], $GLOBALS['username'], $GLOBALS['password']) OR DIE("Unable to connect to database! Please try again later.");
	mysql_select_db($GLOBALS['dbname']);
	
	$query="update `session` set GameTime=0, StartTime='00:00:00', StoppedTime='00:00:00', Running = 0,IsDirty=1";
	mysql_query($query);

}

function RefreshSession(){
	
	
		mysql_connect($GLOBALS['hostname'], $GLOBALS['username'], $GLOBALS['password']) OR DIE("Unable to connect to database! Please try again later.");
		mysql_select_db($GLOBALS['dbname']);
		$query = "select `Half`,`Buzzer`,`IsReset`,`StoppedTime`,`GameTime`,`IsDirty`, `StartTime`, `Running`,emblem1.Url as `Team1Logo`, emblem2.Url as `Team2Logo`, T1.Name as `Team1Name`,T2.Name as `Team2Name`,T1.Score as `Team1Score`,T2.Score as `Team2Score`,T1.Fouls as `Team1Fouls`,T2.Fouls as `Team2Fouls` from session s inner join session_team T1 on T1.ID = s.T1ID inner join session_team T2 on T2.ID = s.T2ID left join emblemlookup emblem1 on emblem1.ID = T1.EmblemID left join emblemlookup emblem2 on emblem2.ID = T2.EmblemID limit 1";
		$result = mysql_query($query);
		
		
		$isdirty = mysql_result($result,0,"IsDirty");
		$starttime = mysql_result($result,0,"StartTime");
		$running = mysql_result($result,0,"Running");
		$team1name = mysql_result($result,0,"Team1Name");
		$team2name = mysql_result($result,0,"Team2Name");
		$team1score = mysql_result($result,0,"Team1Score");
		$team2score = mysql_result($result,0,"Team2Score");
		$team1fouls = mysql_result($result,0,"Team1Fouls");
		$team2fouls = mysql_result($result,0,"Team2Fouls");
		$gametime = mysql_result($result,0,"GameTime");
		$stoppedtime = mysql_result($result,0,"StoppedTime");
		$isreset = mysql_result($result,0,"IsReset");
		$logo1 = mysql_result($result,0,"Team1Logo");
		$logo2= mysql_result($result,0,"Team2Logo");
		$buzzer = mysql_result($result,0,"Buzzer");
		$half = mysql_result($result,0,"Half");
		
		$arr = array(
		
		"IsDirty" => $isdirty,
		"StartTime" => $starttime,
		"Running" => $running,
		"Team1Name" => $team1name,
		"Team2Name" => $team2name,
		"Team1Score"=> $team1score,
		"Team2Score"=> $team2score,
		"Team1Fouls"=>$team1fouls,
		"Team2Fouls"=>$team2fouls,
		"GameTime"=>$gametime,
		"StoppedTime"=>$stoppedtime,
		"IsReset"=>$isreset,
		"Logo1"=>$logo1,
		"Logo2"=>$logo2,
		"Buzzer"=>$buzzer,
		"Half"=>$half
		);
	
		if($isreset==1){
			
			$query='update `session` set IsDirty=0, IsReset=0';
			
		}else{
		$query = 'update `session` set IsDirty=0, Buzzer=0';
		}
		mysql_query($query);
	
		echo(json_encode($arr));
	
}

function timeToSeconds($time) {
    $timepieces = explode(":",$time);
	
    return $timepieces[0] * 3600 + $timepieces[1] * 60 + $timepieces[2];
}

function GetEmblems(){
	
	
	mysql_connect($GLOBALS['hostname'], $GLOBALS['username'], $GLOBALS['password']) OR DIE("Unable to connect to database! Please try again later.");
	mysql_select_db($GLOBALS['dbname']);
	mysql_query('SET NAMES utf8');
	$query = "select ID,Name from `emblemlookup` order by Name ASC";   
	
	$result = mysql_query($query);
    
    $stack = array();    
    
    while ($row = mysql_fetch_array($result)) {
			
		
		$arr = array(
		"ID"=>$row["ID"],
		"Name"=>$row["Name"]);
		
		array_push($stack, $arr);

	}
	
	echo(json_encode($stack));            
	
}

?>