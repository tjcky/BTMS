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
		var data1 = [	
						['1', '', '', '매거진', '인터랙션', '로그인', '매거진 확인', '타이틀의 매거진 / 더보기 버튼\n 이미지 / 서브타이틀 및 설명'],
						['2', '', '', '', '', '', '더보기 클릭', '매거진 더보기 화면으로 이동'],
						['3', '', '', '', '', '', '서브타이틀 클릭', '해당 매거진의 랜딩페이지로 이동'],
						['4', '', '', '쇼핑몰 리뷰 요약', '인터랙션', '', '쇼핑몰 리뷰 확인', '총 평점/가장 많은 평점/전체 리뷰수/더보기 버튼 노출'],
						['5', '', '', '', '', '', '쇼핑몰 리뷰 확인', '쇼핑몰 리뷰 미노출'],
						['6', '', '', '매거진', '인터랙션', '로그인', '매거진 확인', '타이틀의 매거진 / 더보기 버튼\n 이미지 / 서브타이틀 및 설명'],
						['7', '', '', '', '', '', '더보기 클릭', '매거진 더보기 화면으로 이동'],
						['8', '', '', '', '', '', '서브타이틀 클릭', '해당 매거진의 랜딩페이지로 이동'],
						['9', '', '', '쇼핑몰 리뷰 요약', '인터랙션', '', '쇼핑몰 리뷰 확인', '총 평점/가장 많은 평점/전체 리뷰수/더보기 버튼 노출'],
						['10', '', '', '', '', '', '쇼핑몰 리뷰 확인', '쇼핑몰 리뷰 미노출'],
						['11', '', '', '매거진', '인터랙션', '로그인', '매거진 확인', '타이틀의 매거진 / 더보기 버튼\n 이미지 / 서브타이틀 및 설명'],
						['12', '', '', '', '', '', '더보기 클릭', '매거진 더보기 화면으로 이동'],
						['13', '', '', '', '', '', '서브타이틀 클릭', '해당 매거진의 랜딩페이지로 이동'],
						['14', '', '', '쇼핑몰 리뷰 요약', '인터랙션', '', '쇼핑몰 리뷰 확인', '총 평점/가장 많은 평점/전체 리뷰수/더보기 버튼 노출'],
						['15', '', '', '', '', '', '쇼핑몰 리뷰 확인', '쇼핑몰 리뷰 미노출'],
						['16', '', '', '매거진', '인터랙션', '로그인', '매거진 확인', '타이틀의 매거진 / 더보기 버튼\n 이미지 / 서브타이틀 및 설명'],
						['17', '', '', '', '', '', '더보기 클릭', '매거진 더보기 화면으로 이동'],
						['18', '', '', '', '', '', '서브타이틀 클릭', '해당 매거진의 랜딩페이지로 이동'],
						['19', '', '', '쇼핑몰 리뷰 요약', '인터랙션', '', '쇼핑몰 리뷰 확인', '총 평점/가장 많은 평점/전체 리뷰수/더보기 버튼 노출'],
						['20', '', '', '', '', '', '쇼핑몰 리뷰 확인', '쇼핑몰 리뷰 미노출'],
						['21', '', '', '매거진', '인터랙션', '로그인', '매거진 확인', '타이틀의 매거진 / 더보기 버튼\n 이미지 / 서브타이틀 및 설명'],
						['22', '', '', '', '', '', '더보기 클릭', '매거진 더보기 화면으로 이동'],
						['23', '', '', '', '', '', '서브타이틀 클릭', '해당 매거진의 랜딩페이지로 이동'],
						['24', '', '', '쇼핑몰 리뷰 요약', '인터랙션', '', '쇼핑몰 리뷰 확인', '총 평점/가장 많은 평점/전체 리뷰수/더보기 버튼 노출'],
						['25', '', '', '', '', '', '쇼핑몰 리뷰 확인', '쇼핑몰 리뷰 미노출'],
						['26', '', '', '매거진', '인터랙션', '로그인', '매거진 확인', '타이틀의 매거진 / 더보기 버튼\n 이미지 / 서브타이틀 및 설명'],
						['27', '', '', '', '', '', '더보기 클릭', '매거진 더보기 화면으로 이동'],
						['28', '', '', '', '', '', '서브타이틀 클릭', '해당 매거진의 랜딩페이지로 이동'],
						['29', '', '', '쇼핑몰 리뷰 요약', '인터랙션', '', '쇼핑몰 리뷰 확인', '총 평점/가장 많은 평점/전체 리뷰수/더보기 버튼 노출'],
						['30', '', '', '', '', '', '쇼핑몰 리뷰 확인', '쇼핑몰 리뷰 미노출']
		    		],
			container1 = document.getElementById('example'),
			settings1 = {
				data: data1,
				colHeaders: ['번호', '대분류', '중분류', '소분류', '기능', '조건', '액션', '기대결과'],
				width:1500,
				height:1200,
				fixedRowsTop:1,
				stretchH: 'all',
				manualColumnMove: true,
				manualRowMove: true
		    },
		    hot1;
		  
			hot1 = new Handsontable(container1, settings1);				
			hot1.render();
		  
			function bindDumpButton() {
				if (typeof Handsontable === "undefined") {
					return;
				}
		  
				Handsontable.Dom.addEvent(document.body, 'click', function (e) {
		  
				var element = e.target || e.srcElement;
		  
				if (element.nodeName == "BUTTON" && element.name == 'dump') {
					var name = element.getAttribute('data-dump');
					var instance = element.getAttribute('data-instance');
					var hot = window[instance];						
		        }
				});
		    }
		  	bindDumpButton();
	});		
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