function readActivity(no) {
	jQuery.ajax({
	    url			: "/activity/activityDetail?no=" + no,
	    type		: 'GET',
	    async		: 'false',
	    dataType	: 'html',
	    success		: function(req){
	    				jQuery("#page").html(req);
	    			  }
	
	});
}