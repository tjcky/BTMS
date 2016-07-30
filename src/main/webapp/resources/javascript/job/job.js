function getJobTemplateAllList() {
	var projectId = jQuery("#projectAddressId").val();
	console.log(projectId); // 정상
	
	 window.location.href = "/project/" + projectId + "/jobTemplateAllList";
}