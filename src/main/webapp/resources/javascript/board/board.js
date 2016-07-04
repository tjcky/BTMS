function readBoard(bno) {
	jQuery.ajax({
	    url			: "/board/read?bno=" + bno,
	    type		: 'GET',
	    async		: 'false',
	    dataType	: 'html',
	    success		: function(req){
	    				jQuery("#page").html(req);
	    			  }
	
	});
}

function modifyBoard(bno) {
	jQuery.ajax({
	    url			: "/board/modify?bno=" + bno,
	    type		: 'GET',
	    async		: 'false',
	    dataType	: 'html',
	    success		: function(req){
	    				jQuery("#page").html(req);
	    			  }
	
	});
}

function removeBoard(bno) {
	jQuery.ajax({
	    url			: "/board/remove?bno=" + bno,
	    type		: 'GET',
	    async		: 'false',
	    dataType	: 'html',
	    success		: function(req){
	    				jQuery("#page").html(req);
	    			  }
	
	});
}