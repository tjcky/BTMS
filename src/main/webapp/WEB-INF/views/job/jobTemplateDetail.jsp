<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c"   uri="http://java.sun.com/jsp/jstl/core" %>
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
		
		var header = getJobHeader('${result.headerJson}');
		var content = JSON.parse('${result.contentJson}');
		var bindData = new Array(header.length);	// 1. Header의 컬럼 개수만큼 배열을 생성한다.
		initialGrid();
		showContent(content);
				
		function afterDomloaded() {
			var container = document.getElementById('example');
			var hot = new Handsontable(container, {
				data 		: bindData,
				colHeaders  : header,
				width		:1500,
				height		:1200,
				fixedRowsTop:content.length,
				stretchH	: 'all',
			});		
		}
		
		function initialGrid() {
	    	for(var index = 0; index < content.length; index++){
	    		bindData[index] = new Array(bindData.length);	// 2. 각 배열에 Row의 수만큼 배열을 생성하는데, 각 배열에는 컬럼의 수 만큼 생성 [ 2 x 2 배열 ]
	      	}
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
		
		function getJobHeader(req) {
			var obj = JSON.parse(req);
			var header = obj[0].content;
			
			return header.split("┞");
		}
		
		function showContent(req) {
			for (var row = 0; row < req.length; row++) {
				 var splited = req[row].content.split("┞");
				 for (var col = 0; col < bindData[row].length; col++) {
					bindData[row][col] = splited[col];
				 }
			}
		}
	</script>
</head>

<body>
	<div class="row wrapper border-bottom white-bg page-heading">
        <div class="col-lg-10">
        	<c:set var="jobTemplate" value="${result.jobTemplate }"/>
            <h2>${jobTemplate.projectName } :: ${jobTemplate.versionTemplateName }</h2>
            <ol class="breadcrumb">
                <li>
                    <span>${jobTemplate.projectName }</span>
                </li>
                <li>
                    <span>작업 템플릿 목록</span>
                </li>
                <li>
                    <a href="/project/${jobTemplate.projectAddressId}/jobTemplateAllList"><span>전체 작업 템플릿</span></a>
                </li>
                <li>
                    <a href="/project/${jobTemplate.projectAddressId}/jobTemplateAllList/${jobTemplate.jobMasterUppderCode }"><span>${jobTemplate.masterTemplateName} </span></a>
                </li>
                <li class="active">
                    <strong>템플릿 상세</strong>
                </li>
            </ol>
        </div>
        <div class="col-lg-2">
            			
        </div>
    </div>
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
								<div class="col-lg-10"><p class="form-control-static">${jobTemplate.masterTemplateName}</p></div>
                            </div>
							<div class="form-group"><label class="col-lg-2 control-label">버전 명</label>
								<div class="col-lg-10"><p class="form-control-static">${jobTemplate.versionTemplateName }</p></div>
                            </div>
							<div class="form-group"><label class="col-lg-2 control-label">작성자</label>
								<div class="col-lg-10"><p class="form-control-static">${jobTemplate.creatorName }</p></div>
                            </div>
							<div class="form-group"><label class="col-lg-2 control-label">작성일</label>
								<div class="col-lg-10"><p class="form-control-static">${jobTemplate.createdDate }</p></div>
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