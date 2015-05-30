$(document).ready(function(){

	$.ajax({
		 type: "GET",
		 cache: 0,
		 url:"Data/Data.php",
		 data:{
			 GetEmblemsFull:1
		 },
	 }).done(function(data){
		 
		GetEmblemsHtml();

	$("#upload").uploadFile({
	url:"Data/UploadEmblem.php",
	fileName:"myfile",
	multiple:false,
	dynamicFormData: function()
{
	var data ={ Name:$("#emblemname").val()}
	return data;
},
	onSuccess:function(files,data,xhr){
		
		GetEmblemsHtml();
	
		 
		 setTimeout(function(){
			 
			 $(".ajax-file-upload-statusbar").hide();
			 
		 },1500);

	}
	});

		 
	 });
	 
	 
	 $(document).on('click','#deleteemblem',function(){
		 
		 
		 var id = $(this).attr("data-emblem-id");
		 $.ajax({
		 type: "GET",
		 cache: 0,
		 url:"Data/Data.php",
		 data:{
			 DeleteEmblem:id
		 },
	 }).done(function(data){
		 
	GetEmblemsHtml();
		 
	 });
		 
		 
	 });
	
});

function GetEmblemsHtml(){
	
	
	$.ajax({
		 type: "GET",
		 cache: 0,
		 url:"Data/Data.php",
		 data:{
			 GetEmblemsFull:1
		 },
	 }).done(function(data){
		 
		 $(".row").empty();
		 
		 var emblems = JSON.parse(data);
		 
		 $("#numofemblems").html(emblems.length);
		 
		 jQuery.each(emblems, function() {

			$('<li class="col-lg-2 col-md-3 col-sm-6 col-xs-12"><div class="imageholder"><img class="itemimage" src="'+this.Url+'" /><div><span>'+this.Name+'</span></div></div><div><br/><span id="deleteemblem" data-emblem-id="'+this.ID+'" class="link btn-sm btn-danger">Delete</span></div></li>').appendTo(".row");

		});
	 });
	
}