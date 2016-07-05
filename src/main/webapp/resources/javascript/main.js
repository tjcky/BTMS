function showBoardList() {
	jQuery.ajax({
	    url			: "/board/listAll",
	    type		: "GET",
	    async		: "false",
	    dataType	: "html",
	    success		: function(req){
	    				jQuery("#page").html(req);
	    			  }
	
	});
}

function showExcelDetail() {
	jQuery.ajax({
		url			: "/excel/excelDetail",
	    type		: "GET",
	    async		: "false",
	    success		: function(req){
	    				jQuery("#page").html(req);
	    			  }
	
	});
}

function showActivityList() {
	jQuery.ajax({
		url			: "/activityList",
		type		: "GET",
		async		: "false",
		success		: function(req)	{
						jQuery("#page").html(req);
		}
	});
}