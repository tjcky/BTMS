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
	console.log('excel');
	
	jQuery.ajax({
	    url			: "/excel/excelDetail",
	    type		: "GET",
	    async		: "false",
	    success		: function(req){
	    				console.log('before');
	    				jQuery("#page").html(req);

	    				console.log('after');
	    			  }
	
	});
}