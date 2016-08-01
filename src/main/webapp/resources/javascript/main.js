function goToService() {
	var projectId = jQuery("#mainProjectAddressId").val();
	
	window.location.href = "/project/" + projectId;
}

function goToActivitySchedule() {
	window.location.href = "/kcmsus/activitySchedule";
}

function goToActivityList() {
	window.location.href = "/kcmsus/activityList";
}

function goToActivityDetail() {
	window.location.href = "/kcmsus/activityDetail";
}

function goToJobTemplateList() {
	window.location.href = "/kcmsus/jobTemplateList";
}

function goToJobDetail() {
	window.location.href = "/kcmsus/openJobTemplateDetail";
}

function goToJobExecutionDetail() {
	window.location.href = "/kcmsus/jobExecutionDetail";
}

function goToJobExecutionResult() {
	window.location.href = "/kcmsus/jobExecutionResult";
}

function getJobTemplateAllList() {
	var projectId = jQuery("#mainProjectAddressId").val();
	
	window.location.href = "/project/" + projectId + "/jobTemplateAllList";
}