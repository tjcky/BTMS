function getJobTemplateAllList() {
	var projectId = jQuery("#projectAddressId").val();
	
	window.location.href = "/project/" + projectId + "/jobTemplateAllList";
}