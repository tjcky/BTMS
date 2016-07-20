<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>

<head>
    <title>Job Detail</title>
	<script src="/resources/hansonTable/dist/handsontable.full.js"></script>
	<!-- <script type="text/javascript" src="/resources/json2.js"></script> -->
	<link rel="stylesheet" media="screen" href="/resources/hansonTable/dist/handsontable.full.css" />
	<script type="text/javascript">
		jQuery(function() {		
			afterDomloaded();
	
			bindDumpButton();
		});
	
		var bindData = new Array(getColumnHeaders('${columnNames}').length);
		initialGrid();
		showContent('${columnData}');
			
		function afterDomloaded() {
			var container = document.getElementById('example');
			var hot = new Handsontable(container, {
				data : bindData,
				colHeaders : getColumnHeaders('${columnNames}'), 
				minSpareRows : 1
			});		
		}
		
		function initialGrid() {
	    	for(var index = 0; index < bindData.length; index++){
	    		bindData[index] = new Array(bindData.length);
	      	}
	    }
		
	    function showContent(msg) {
	    	var list = JSON.parse(msg).list;
	    	var num = 0;
	    	for (var row = 0; row < bindData.length; row++){
	      		for (var col = 0; col < bindData[row].length; col++){
	      			bindData[row][col] = list[num++];      			
	        	}
	      	}    	
	    }
		
		function getColumnHeaders(msg) {
			var columnNames = JSON.parse(msg);
			return columnNames.list;
		}
		
		function bindDumpButton() {
			if (typeof Handsontable === "undefined") {
				return;
			}
			Handsontable.Dom.addEvent(document.body, 'click', function(e) {
				var element = e.target || e.srcElement;
				if (element.nodeName == "BUTTON" && element.name == 'dump') {
					var name = element.getAttribute('data-dump');
					var instance = element.getAttribute('data-instance');
					var hot = window[instance];
				}
			});
		}
		
		function save() {
			Handsontable.Dom.addEvent(save, 'click', function() {			
				var length = hot.getData().length-1;
	/*   			var result = '{';
				
				for (var row = 0; row < length; row++) {
					result += '{';
					result += "bno:";
					result += hot.getData()[row][0];
					result += ",title:"
					result += hot.getData()[row][1];
					result += ",content:"
					result += hot.getData()[row][2];
					result += '},';
				}
				
				result += '}'; */
	 
	 			var form = [
	 			    {
						bno : '123',
						title : '타이틀',
						content : '제목'		
					},
	 			    {
						bno : '123',
						title : '타이틀',
						content : '제목'		
					}
	 			];	
	 						
	/* 			$.ajax({				
					url: '/excelSave',
					type: 'POST',
					dataType: 'text',
					contentType: 'application/json; charset=utf-8',
					data : JSON.stringify(form),
					success: function(body, statusText) {		  			
			  		}, 
			  		error: function(xhr) {
			  			
			  		}
			  	}); */
				
			});
		}
		
	</script>
</head>

<body>
	<div class="wrapper wrapper-content  animated fadeInRight">
        <div class="row">
			<div class="col-lg-12">
                <div class="ibox">
                	<div class="ibox-title">
                        <h5>템플릿 정보</h5>
                        <div class="ibox-tools">
                            <a class="collapse-link">
                                <i class="fa fa-chevron-up"></i>
                            </a>
                        </div>                        
                    </div>
                    <div class="ibox-content">
                    	<form method="get" class="form-horizontal">
							<div class="form-group"><label class="col-lg-2 control-label">템플릿 명</label>
								<div class="col-lg-10"><p class="form-control-static">뮤직플레이어</p></div>
                            </div>
							<div class="form-group"><label class="col-lg-2 control-label">버전 명</label>
								<div class="col-lg-10"><p class="form-control-static">2016년 7월 1주</p></div>
                            </div>
							<div class="form-group"><label class="col-lg-2 control-label">작성자</label>
								<div class="col-lg-10"><p class="form-control-static">권영</p></div>
                            </div>
							<div class="form-group"><label class="col-lg-2 control-label">작성일</label>
								<div class="col-lg-10"><p class="form-control-static">2016년 7월 3일</p></div>
                            </div>
                    	</form>
                    </div>
            	</div>
            	
                <div class="ibox">
                	<div class="ibox-title">
                        <h5>템플릿 상세</h5>
                        <div class="ibox-tools">
                            <a class="collapse-link">
                                <i class="fa fa-chevron-up"></i>
                            </a>
                        </div> 
                    </div>
                    <div class="ibox-content">
						<div id="example"></div>
                    </div>
            	</div>
        </div>
        </div>
    </div>  
</body>
</html>