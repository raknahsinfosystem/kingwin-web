var serviceEndPoint="http://localhost:8081/kingwin-service/rest/api/";
checkAuth();
function doServiceCall(options,callback,callbackData){
	var methodType=options.methodType;
	var apiPath=options.apiPath;
	var data=options.data;
	if(methodType=="GET"){
		var data=$.type(data)=="string" ? data : JSON.stringify(data);
		if(data!=undefined && data!=""){
			apiPath=apiPath+"?"+data;
		}
		options.data="";
	}
	
	$.ajax({
		type:methodType,															//post
		url:apiPath,
		headers: {'userToken': encodeURIComponent(window.localStorage.getItem("userToken"))}, 
		contentType: options.inputType,
		data:$.type(data)=="string" ? data : JSON.stringify(data),
		success: function(response){
			if(callback!=undefined){
				if(callbackData!=undefined){
					callback(response,callbackData);
				}
				else{
					callback(response);
				}
			}
		},
		error : function(response) {
			alert("Error Occured");
		}
	});
			
}
function initUserObj(){
	pageScope.userType=window.localStorage.getItem("userType");
	pageScope.userToken=window.localStorage.getItem("userToken");
}
$(document).ready(function(){
	//$("select").select2();
	if(window.location.href.indexOf('/login')==-1){
		initUserObj();
		/*$.ajaxSetup({
		    beforeSend: function (xhr)
		    {
		       xhr.setRequestHeader("userToken",pageScope.userToken);
		    }
		});*/
	}
});
function checkAuth(){
	if(window.location.href.indexOf('/login')==-1){
		var userType=window.localStorage.getItem("userType");
		var userToken=window.localStorage.getItem("userToken");
		if(userType==null || userToken==null){
			window.location.href="login.html";
		}
	}
}