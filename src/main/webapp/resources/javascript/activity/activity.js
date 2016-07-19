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

function openJobDetail() {
	jQuery.ajax({
	    url			: "/activity/openJobDetail?",
	    type		: 'GET',
	    async		: 'false',
	    dataType	: 'html',
	    success		: function(req) {	    	
	    				jQuery("#page").html(req);	    				
	    			  }
	
	});
}