function showBoardList() {
	jQuery.ajax({
	    url			: "/board/listAll",
	    type		: 'GET',
	    async		: 'false',
	    dataType	: 'html',
	    success		: function(req){
	    				jQuery("#page").html(req);
	    			  }
	
	});
}