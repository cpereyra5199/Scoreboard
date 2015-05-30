$(document).ready(function(){
	
	$.ajax({
		 type: "GET",
		 cache: 0,
		 url:"Data/Data.php",
		 data:{
			 GetEmblems:1
		 },
	 }).done(function(data){
		 
		 var emblems = JSON.parse(data);
		 
		 jQuery.each(emblems, function() {

			$('<option value="'+this.ID+'">'+this.Name+'</option>').appendTo($(".emblemdrop")); 

		});
		
		SetTeam();
		 
	 });

});

function SetTeam(){
	
	$.ajax({
		 type: "GET",
		 cache: 0,
		 url:"Data/Data.php",
		 data:{
			 LoadTeams:1
		 },
	 }).done(function(data){
		 
		var teams = JSON.parse(data);
		
		if (teams[0].Name !=""){
			
			$("#team1name").val(teams[0].Name);
			$("#team1name").blur();
			
			$("#team1namemobile").val(teams[0].Name);
			$("#team1namemobile").blur();
			
		}
		
		if (teams[1].Name !=""){
			
			$("#team2name").val(teams[1].Name);
			$("#team2name").blur();
			
			$("#team2namemobile").val(teams[1].Name);
			$("#team2namemobile").blur();
		}
		 
	 });
	
	
}

$(document).on("click",".sectiontitle",function(){
	
	$(this).next().toggleClass("hidden");
	
});

$(document).on('blur','.emblemurl',function(){
	
	var teamname = $(this).val()

	var dropdown = $(this).parent().find("select");
	
	dropdown.val(0);
	
	$(this).parent().find("option").each(function(){

		 if($(this).text().toUpperCase() == teamname.toUpperCase()){
			 
			 dropdown.val($(this).val());

		 }
		 
		 
	 });
	
});

$(document).on('click','#buzzer',function(){
	
	
	
	$.ajax({
		 type: "GET",
		 cache: 0,
		 url:"Data/Data.php",
		 data:{
			 ActivateBuzzer:1
		 },
	 }).done(function(data){
		 
		 
	 });
	
});

$(document).on('click','.sethalf',function(){
	
	var half = $(this).attr("data-half");
	
	$.ajax({
		 type: "GET",
		 cache: 0,
		 url:"Data/Data.php",
		 data:{
			 SetHalf:half
		 },
	 }).done(function(data){
		 
		 //reset fouls when half changes
		 
		 $.ajax({
		 type: "GET",
		 cache: 0,
		 url:"Data/Data.php",
		 data:{
			 ResetFouls: 1
		 },
	 });
		 
	 });
	
	
});

$(document).on('click','.goal',function(){
	
	
	
	var teamid=$(this).attr("data-team-id");
	var updown=$(this).attr("data-up-down");
	
	$.ajax({
		 type: "GET",
		 cache: 0,
		 url:"Data/Data.php",
		 data:{
			 GoalChange: 1,
			 TeamID: teamid,
			 UpDown: updown
		 },
	 }).done(function(data){
		 
		 
	 });
	
});

$(document).on('click','.fouls',function(){
	
	
	
	var teamid=$(this).attr("data-team-id");
	var updown=$(this).attr("data-up-down");
	
	$.ajax({
		 type: "GET",
		 cache: 0,
		 url:"Data/Data.php",
		 data:{
			 FoulsChange: 1,
			 TeamID: teamid,
			 UpDown: updown
		 },
	 }).done(function(data){
		 
		 
	 });
	
});


$(document).on('click','#resetfouls',function(){
	
	
	
	$.ajax({
		 type: "GET",
		 cache: 0,
		 url:"Data/Data.php",
		 data:{
			 ResetFouls: 1
		 },
	 });
	
	
})

$(document).on('click','#startclock',function(){
	
	
	
	var date = new Date();
	
	$.ajax({
		 type: "GET",
		 cache: 0,
		 url:"Data/Data.php",
		 data:{
			 StartWatch: date.getHours()+":"+date.getMinutes()+":"+date.getSeconds()
		 },
	 });
	
});

$(document).on('click','#stopclock',function(){
	
	
	
	var date = new Date();
	
	$.ajax({
		 type: "GET",
		 cache: 0,
		 url:"Data/Data.php",
		 data:{
			 StopWatch: date.getHours()+":"+date.getMinutes()+":"+date.getSeconds()
		 },
	 }).done(function(data){
		 
		 
	 });
	
});

$(document).on('click','#resetclock',function(){
	
	
	
	var date = new Date();
	
	$.ajax({
		 type: "GET",
		 cache: 0,
		 url:"Data/Data.php",
		 data:{
			 ResetClock: 1
		 },
	 }).done(function(data){
		 
		 
	 });
	
});


$(document).on('click','#set,#setmobile',function(){
	
	var id = $(this).attr('id');
	
	if(id=="set"){
	
	var time = Number($("#minutes").val()*60)+Number($("#seconds").val());

	var team1name = $("#team1name").val();
	
	var team2name = $("#team2name").val();
	
	var emblemid1= $("#team1emblem").val();
	var emblemid2= $("#team2emblem").val();
	
	if(time==1){
		
		alert("Can't set clock for 1 second");
		return false;
		
	}
	
}else if (id == "setmobile"){
	
	var time = Number($("#minutesmobile").val()*60)+Number($("#secondsmobile").val());

	var team1name = $("#team1namemobile").val();
	var team2name = $("#team2namemobile").val();
	
	var emblemid1= $("#team1emblemmobile").val();
	var emblemid2= $("#team2emblemmobile").val();
	
	if(time==1){
		
		alert("Can't set clock for 1 second");
		return false;
		
	}

}

$.ajax({
		 type: "GET",
		 cache: 0,
		 url:"Data/Data.php",
		 data:{
			 SetClock: time,
			 Team1: team1name,
			 Team2: team2name,
			 Team1Emblem:emblemid1,
			 Team2Emblem:emblemid2
		 },
	 }).done(function(data){
		 
		 
	 });
	
});
