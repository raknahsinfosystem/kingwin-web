var serviceEndPoint="http://localhost:8081/kingwin-service/rest/api/";
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