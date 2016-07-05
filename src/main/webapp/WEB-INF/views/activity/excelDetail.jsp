<!DOCTYPE>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<html xmlns="http://www.w3.org/1999/xhtml" lang="ko">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title>HandsonTable Example</title>
<script src="/resources/plugins/jQuery/jQuery-2.1.4.min.js"></script>
<script src="/resources/hansonTable/dist/handsontable.full.js"></script>
<!-- <script type="text/javascript" src="/resources/json2.js"></script> -->
<link rel="stylesheet" media="screen" href="/resources/hansonTable/dist/handsontable.full.css" />

<script type="text/javascript">
	jQuery(function() {
		afterDomloaded();

		bindDumpButton();
	});
	
	function afterDomloaded() {
		var container = document.getElementById('example');
		var hot = new Handsontable(container, {
			data : callBack('${boardList}'),
			dataSchema : model,
			colHeaders : [ 'Bno', 'Title', 'Content' ],
			columns : [ 
			    {data : property('bno')}, 
			    {data : property('title')}, 
			    {data : property('content')} 
			],
			minSpareRows : 1
		});		
}

	function callBack(msg) {
		var obj = JSON.parse(msg);
		var result = obj.list;
		var data = [];
		for (var index = 0; index < result.length; index++) {
			data[index] = model({
				bno : result[index].bno,
				title : result[index].title,
				content : result[index].content
			});
		}
		return data;
	}

	function model(opts) {
		var _pub = {};
		var _priv = {
			"bno" : undefined,
			"title" : undefined,
			"content" : undefined
		};
		for ( var i in opts) {
			if (opts.hasOwnProperty(i)) {
				_priv[i] = opts[i];
			}
		}
		_pub.attr = function(attr, val) {
			if (typeof val === 'undefined') {
				return _priv[attr];
			}
			_priv[attr] = val;
			return _pub;
		};
		return _pub;
	}
	
	function property(attr) {
		return function(row, value) {
			return row.attr(attr, value);
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
 						
			$.ajax({				
				url: '/excelSave',
				type: 'POST',
				dataType: 'text',
				contentType: 'application/json; charset=utf-8',
				data : JSON.stringify(form),
				success: function(body, statusText) {		  			
		  		}, 
		  		error: function(xhr) {
		  			
		  		}
		  	});
			
		});
	}
	
</script>
</head>

<body>

	<div id="example">
		<button name="save" id="save">Save</button>
	</div>

</body>
</html>