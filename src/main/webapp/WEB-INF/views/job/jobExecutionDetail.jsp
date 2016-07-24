<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>

<head>
    <title>Job 수행 페이지</title>
	<script src="/resources/hansonTable/dist/handsontable.full.js"></script>
	<!-- <script type="text/javascript" src="/resources/json2.js"></script> -->
	<link rel="stylesheet" media="screen" href="/resources/hansonTable/dist/handsontable.full.css" />
	<script type="text/javascript">
		jQuery(function() {		
			var data1 = [	
							['1', '', '', '매거진', '인터랙션', '로그인', '매거진 확인', '타이틀의 매거진 / 더보기 버튼\n 이미지 / 서브타이틀 및 설명', 'Pass', 'Fail', 'Pass'],
							['2', '', '', '', '', '', '더보기 클릭', '매거진 더보기 화면으로 이동', 'Pass', 'Fail', 'Pass'],
							['3', '', '', '', '', '', '서브타이틀 클릭', '해당 매거진의 랜딩페이지로 이동', 'Pass', 'Fail', 'Pass'],
							['4', '', '', '쇼핑몰 리뷰 요약', '인터랙션', '', '쇼핑몰 리뷰 확인', '총 평점/가장 많은 평점/전체 리뷰수/더보기 버튼 노출', 'Pass', 'Fail', 'Pass'],
							['5', '', '', '', '', '', '쇼핑몰 리뷰 확인', '쇼핑몰 리뷰 미노출', 'Pass', 'Fail', 'Pass'],
							['6', '', '', '매거진', '인터랙션', '로그인', '매거진 확인', '타이틀의 매거진 / 더보기 버튼\n 이미지 / 서브타이틀 및 설명', 'Pass', 'Fail', 'Pass'],
							['7', '', '', '', '', '', '더보기 클릭', '매거진 더보기 화면으로 이동', 'Pass', 'Fail', 'Pass'],
							['8', '', '', '', '', '', '서브타이틀 클릭', '해당 매거진의 랜딩페이지로 이동', 'Pass', 'Fail', 'Pass'],
							['9', '', '', '쇼핑몰 리뷰 요약', '인터랙션', '', '쇼핑몰 리뷰 확인', '총 평점/가장 많은 평점/전체 리뷰수/더보기 버튼 노출', 'Pass', 'Fail', 'Pass'],
							['10', '', '', '', '', '', '쇼핑몰 리뷰 확인', '쇼핑몰 리뷰 미노출', 'Pass', 'Fail', 'Pass'],
							['11', '', '', '매거진', '인터랙션', '로그인', '매거진 확인', '타이틀의 매거진 / 더보기 버튼\n 이미지 / 서브타이틀 및 설명', 'Pass', 'Fail', 'Pass'],
							['12', '', '', '', '', '', '더보기 클릭', '매거진 더보기 화면으로 이동', 'Pass', 'Fail', 'Pass'],
							['13', '', '', '', '', '', '서브타이틀 클릭', '해당 매거진의 랜딩페이지로 이동', 'Pass', 'Fail', 'Pass'],
							['14', '', '', '쇼핑몰 리뷰 요약', '인터랙션', '', '쇼핑몰 리뷰 확인', '총 평점/가장 많은 평점/전체 리뷰수/더보기 버튼 노출', 'Pass', 'Fail', 'Pass'],
							['15', '', '', '', '', '', '쇼핑몰 리뷰 확인', '쇼핑몰 리뷰 미노출', 'Pass', 'Fail', 'Pass'],
							['16', '', '', '매거진', '인터랙션', '로그인', '매거진 확인', '타이틀의 매거진 / 더보기 버튼\n 이미지 / 서브타이틀 및 설명', 'Pass', 'Fail', 'Pass'],
							['17', '', '', '', '', '', '더보기 클릭', '매거진 더보기 화면으로 이동', 'Pass', 'Fail', 'Pass'],
							['18', '', '', '', '', '', '서브타이틀 클릭', '해당 매거진의 랜딩페이지로 이동', 'Pass', 'Fail', 'Pass'],
							['19', '', '', '쇼핑몰 리뷰 요약', '인터랙션', '', '쇼핑몰 리뷰 확인', '총 평점/가장 많은 평점/전체 리뷰수/더보기 버튼 노출', 'Pass', 'Fail', 'Pass'],
							['20', '', '', '', '', '', '쇼핑몰 리뷰 확인', '쇼핑몰 리뷰 미노출', 'Pass', 'Fail', 'Pass'],
							['21', '', '', '매거진', '인터랙션', '로그인', '매거진 확인', '타이틀의 매거진 / 더보기 버튼\n 이미지 / 서브타이틀 및 설명', 'Pass', 'Fail', 'Pass'],
							['22', '', '', '', '', '', '더보기 클릭', '매거진 더보기 화면으로 이동', 'Pass', 'Fail', 'Pass'],
							['23', '', '', '', '', '', '서브타이틀 클릭', '해당 매거진의 랜딩페이지로 이동', 'Pass', 'Fail', 'Pass'],
							['24', '', '', '쇼핑몰 리뷰 요약', '인터랙션', '', '쇼핑몰 리뷰 확인', '총 평점/가장 많은 평점/전체 리뷰수/더보기 버튼 노출', 'Pass', 'Fail', 'Pass'],
							['25', '', '', '', '', '', '쇼핑몰 리뷰 확인', '쇼핑몰 리뷰 미노출', 'Pass', 'Fail', 'Pass'],
							['26', '', '', '매거진', '인터랙션', '로그인', '매거진 확인', '타이틀의 매거진 / 더보기 버튼\n 이미지 / 서브타이틀 및 설명', 'Pass', 'Fail', 'Pass'],
							['27', '', '', '', '', '', '더보기 클릭', '매거진 더보기 화면으로 이동', 'Pass', 'Fail', 'Pass'],
							['28', '', '', '', '', '', '서브타이틀 클릭', '해당 매거진의 랜딩페이지로 이동', 'Pass', 'Fail', 'Pass'],
							['29', '', '', '쇼핑몰 리뷰 요약', '인터랙션', '', '쇼핑몰 리뷰 확인', '총 평점/가장 많은 평점/전체 리뷰수/더보기 버튼 노출', 'Pass', 'Fail', 'Pass'],
							['30', '', '', '', '', '', '쇼핑몰 리뷰 확인', '쇼핑몰 리뷰 미노출', 'Pass', 'Fail', 'Pass']
			    		],
				container1 = document.getElementById('example1'),
				settings1 = {
					data: data1,
					colHeaders: ['번호', '대분류', '중분류', '소분류', '기능', '조건', '액션', '기대결과', 'IE 10', 'IE 11', 'Chrome'],
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
	<div class="row wrapper border-bottom white-bg page-heading">
        <div class="col-lg-10">
            <h2>{템플릿명} :: {템플릿 버전명}</h2>
            <ol class="breadcrumb">
                <li>
                    <span>네이버 뮤직</span>
                </li>
                <li>
                    <span>테스트 활동</span>
                </li>
                <li>
                    <span>네이버 뮤직 2016년 7월 2주차 정기배포 테스트건</span>
                </li>
                <li class="active">
                    <strong>작업 수행</strong>
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
		                <div class="ibox-tools">
                            <a href="/kcmsus/activityDetail" class="btn btn-primary btn-xs">활동상세</a>
                            <a href="" class="btn btn-primary btn-xs">+환경추가</a>
                            <a href="" class="btn btn-primary btn-xs">수정</a>			                
			            </div>
                    </div>
                    <div class="ibox-content">
                    	<div class="m-b-lg">
                            <div id="example1"></div>
                        </div>
                    </div>
            	</div>
        	</div>
        </div>
    </div>  
</body>
</html>