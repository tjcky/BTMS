function getJobTemplateAllList() {
	var projectId = jQuery("#projectAddressId").val();
	console.log(projectId);
	
	window.location.href = "/project/" + projectId + "/jobTemplateAllList";
}