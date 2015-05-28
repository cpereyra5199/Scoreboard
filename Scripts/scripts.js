$(document).ready(function(){
	var audio = new Audio('horn.mp3');
	var clock;
	var buzzer = 0;
	
		clock = $('.clock').FlipClock(0, {
		        clockFace: 'MinuteCounter',
		        countdown: true,
		        autoStart: false,
		        callbacks: { }
		    });
	
FirstLoad(clock,audio,buzzer);
	
	

	

});


function FirstLoad(clock,audio,buzzer){
	
		
	$.ajax({
		 type: "GET",
		 cache: 0,
		 url:"Data/Data.php",
		 data:{},
	 }).done(function(data){
		 
			
		 
			var sessioninfo = JSON.parse(data);
			 
			$("#faltasteam1").html(sessioninfo.Team1Fouls);
			$("#faltasteam2").html(sessioninfo.Team2Fouls);
			
			$("#team1score").html(sessioninfo.Team1Score);
			$("#team2score").html(sessioninfo.Team2Score);

			$(".teamname1").html(sessioninfo.Team1Name);
			$(".teamname2").html(sessioninfo.Team2Name);
			
			$(".half").html(sessioninfo.Half == 1 ? "1st Half":"2nd Half");

			if(sessioninfo.Logo1!=null){

			$("#team1logo").show();
			$("#team1logo").attr('src',sessioninfo.Logo1);
			}else{

				$("#team1logo").hide();
				
			}
			if(sessioninfo.Logo2!=null){

			$("#team2logo").show();
			$("#team2logo").attr('src',sessioninfo.Logo2);
			}else{

				$("#team2logo").hide();
				
			}
			
			
			if(sessioninfo.Running == 1){
				
			var date = new Date();
			
			var startdate = new Date();
			
			var time = sessioninfo.StartTime.split(/:/);
			
			startdate.setHours(time[0]);
			startdate.setMinutes(time[1]);
			startdate.setSeconds(time[2]);

			var elapsedtime = Math.abs((startdate.getTime()-date.getTime()));

			var timetoset = sessioninfo.GameTime-elapsedtime/1000;
			
			if(timetoset<0){
				
				ResetTime();
				
			}else{
			clock.setTime(timetoset);
			}
			
			clock.start();
				
			}else{
				
				clock.stop();
				
				var startdate = new Date();
				var stopdate = new Date();
				
				var starttime = sessioninfo.StartTime.split(/:/);
				var stoptime = sessioninfo.StoppedTime.split(/:/);
				
				startdate.setHours(starttime[0]);
				startdate.setMinutes(starttime[1]);
				startdate.setSeconds(starttime[2]);
				
				stopdate.setHours(stoptime[0]);
				stopdate.setMinutes(stoptime[1]);
				stopdate.setSeconds(stoptime[2]);
				
				var elapsedtime = Math.abs((stopdate.getTime()-startdate.getTime()));
				
				var timetoset = sessioninfo.GameTime-elapsedtime/1000;
				
				if(timetoset < 0){
					
					ResetTime();
					
				}else{
				clock.setTime(sessioninfo.GameTime-elapsedtime/1000);	
				}
			}
			
		SecondLoad(clock,audio,buzzer);
		 
	 });
	
	
}

function SecondLoad(clock,audio,buzzer){
	
			
		 setInterval(function(){
		
		$.ajax({
		 type: "GET",
		 cache: 0,
		 url:"Data/Data.php",
		 data:{},
	 }).done(function(data){
		 
		 var sessioninfo = JSON.parse(data);
		 if(sessioninfo.IsDirty == 1){
			 
			 if(sessioninfo.Buzzer==1){
				 
				  audio.play();
				 
			 }
			 
			$("#faltasteam1").html(sessioninfo.Team1Fouls);
			$("#faltasteam2").html(sessioninfo.Team2Fouls);
			
			$("#team1score").html(sessioninfo.Team1Score);
			$("#team2score").html(sessioninfo.Team2Score);
			
			$(".teamname1").html(sessioninfo.Team1Name);
			$(".teamname2").html(sessioninfo.Team2Name);
			
			$(".half").html(sessioninfo.Half == 1 ? "1st Half":"2nd Half");

			if(sessioninfo.Logo1!=null){

			$("#team1logo").show();
			$("#team1logo").attr('src',sessioninfo.Logo1);
			}else{

				$("#team1logo").hide();
				
			}
			
			if(sessioninfo.Logo2!=null){

			$("#team2logo").show();
			$("#team2logo").attr('src',sessioninfo.Logo2);
			}else{

				$("#team2logo").hide();
				
			}
			
			if(sessioninfo.IsReset == 1){
				
				clock.setTime(sessioninfo.GameTime);
				buzzer=0;
				
			}
			
			if(sessioninfo.GameTime == 0){
				
				clock.setTime(0);
				
			}
			
			if(sessioninfo.Running==true){
			
				clock.start();
			
			
			}else{
				
				clock.stop();
				
			}
			 
		 }else{

			 
		 }
		 
		 if(clock.getTime()==0 && buzzer==0 && sessioninfo.Running==1){
			 
			 buzzer++;
			 
			 setTimeout(function(){ 

			 var audio = new Audio('horn.mp3');
			 audio.play();
			 

			 }, 1000);

			 
		 }
		 
	 });
		
		
	},500);
	
	
}

function ResetTime(){
	
	
	var date = new Date();
	
	$.ajax({
		 type: "GET",
		 cache: 0,
		 url:"Data/Data.php",
		 data:{
			 ResetTime: 1
		 },
	 }).done(function(data){
		 
		 
	 });
	
}