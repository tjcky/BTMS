<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>

<head>
    <title>Job 수행 결과 페이지</title>
	<script src="/resources/hansonTable/dist/handsontable.full.js"></script>
	<!-- <script type="text/javascript" src="/resources/json2.js"></script> -->
	<link rel="stylesheet" media="screen" href="/resources/hansonTable/dist/handsontable.full.css" />
	<script type="text/javascript">
		jQuery(function() {		
			var data1 = [	
							['1', '', '', '매거진', '인터랙션', '로그인', '매거진 확인', '타이틀의 매거진 / 더보기 버튼\n 이미지 / 서브타이틀 및 설명', 'Pass', 'Fail', 'Pass', 'Pass', 'Pass'],
							['2', '', '', '', '', '', '더보기 클릭', '매거진 더보기 화면으로 이동', 'Pass', 'Fail', 'Pass', 'Pass', 'Pass'],
							['3', '', '', '', '', '', '서브타이틀 클릭', '해당 매거진의 랜딩페이지로 이동', 'Pass', 'Fail', 'Pass', 'Pass', 'Pass'],
							['4', '', '', '쇼핑몰 리뷰 요약', '인터랙션', '', '쇼핑몰 리뷰 확인', '총 평점/가장 많은 평점/전체 리뷰수/더보기 버튼 노출', 'Pass', 'Fail', 'Pass', 'Pass', 'Pass'],
							['5', '', '', '', '', '', '쇼핑몰 리뷰 확인', '쇼핑몰 리뷰 미노출', 'Pass', 'Fail', 'Pass', 'Pass', 'Pass'],
							['6', '', '', '매거진', '인터랙션', '로그인', '매거진 확인', '타이틀의 매거진 / 더보기 버튼\n 이미지 / 서브타이틀 및 설명', 'Pass', 'Fail', 'Pass', 'Pass', 'Pass'],
							['7', '', '', '', '', '', '더보기 클릭', '매거진 더보기 화면으로 이동', 'Pass', 'Fail', 'Pass', 'Pass', 'Pass'],
							['8', '', '', '', '', '', '서브타이틀 클릭', '해당 매거진의 랜딩페이지로 이동', 'Pass', 'Fail', 'Pass', 'Pass', 'Pass'],
							['9', '', '', '쇼핑몰 리뷰 요약', '인터랙션', '', '쇼핑몰 리뷰 확인', '총 평점/가장 많은 평점/전체 리뷰수/더보기 버튼 노출', 'Pass', 'Fail', 'Pass', 'Pass', 'Pass'],
							['10', '', '', '', '', '', '쇼핑몰 리뷰 확인', '쇼핑몰 리뷰 미노출', 'Pass', 'Fail', 'Pass', 'Pass', 'Pass'],
							['11', '', '', '매거진', '인터랙션', '로그인', '매거진 확인', '타이틀의 매거진 / 더보기 버튼\n 이미지 / 서브타이틀 및 설명', 'Pass', 'Fail', 'Pass', 'Pass', 'Pass'],
							['12', '', '', '', '', '', '더보기 클릭', '매거진 더보기 화면으로 이동', 'Pass', 'Fail', 'Pass', 'Pass', 'Pass'],
							['13', '', '', '', '', '', '서브타이틀 클릭', '해당 매거진의 랜딩페이지로 이동', 'Pass', 'Fail', 'Pass', 'Pass', 'Pass'],
							['14', '', '', '쇼핑몰 리뷰 요약', '인터랙션', '', '쇼핑몰 리뷰 확인', '총 평점/가장 많은 평점/전체 리뷰수/더보기 버튼 노출', 'Pass', 'Fail', 'Pass', 'Pass', 'Pass'],
							['15', '', '', '', '', '', '쇼핑몰 리뷰 확인', '쇼핑몰 리뷰 미노출', 'Pass', 'Fail', 'Pass', 'Pass', 'Pass'],
							['16', '', '', '매거진', '인터랙션', '로그인', '매거진 확인', '타이틀의 매거진 / 더보기 버튼\n 이미지 / 서브타이틀 및 설명', 'Pass', 'Fail', 'Pass', 'Pass', 'Pass'],
							['17', '', '', '', '', '', '더보기 클릭', '매거진 더보기 화면으로 이동', 'Pass', 'Fail', 'Pass', 'Pass', 'Pass'],
							['18', '', '', '', '', '', '서브타이틀 클릭', '해당 매거진의 랜딩페이지로 이동', 'Pass', 'Fail', 'Pass', 'Pass', 'Pass'],
							['19', '', '', '쇼핑몰 리뷰 요약', '인터랙션', '', '쇼핑몰 리뷰 확인', '총 평점/가장 많은 평점/전체 리뷰수/더보기 버튼 노출', 'Pass', 'Fail', 'Pass', 'Pass', 'Pass'],
							['20', '', '', '', '', '', '쇼핑몰 리뷰 확인', '쇼핑몰 리뷰 미노출', 'Pass', 'Fail', 'Pass', 'Pass', 'Pass'],
							['21', '', '', '매거진', '인터랙션', '로그인', '매거진 확인', '타이틀의 매거진 / 더보기 버튼\n 이미지 / 서브타이틀 및 설명', 'Pass', 'Fail', 'Pass', 'Pass', 'Pass'],
							['22', '', '', '', '', '', '더보기 클릭', '매거진 더보기 화면으로 이동', 'Pass', 'Fail', 'Pass', 'Pass', 'Pass'],
							['23', '', '', '', '', '', '서브타이틀 클릭', '해당 매거진의 랜딩페이지로 이동', 'Pass', 'Fail', 'Pass', 'Pass', 'Pass'],
							['24', '', '', '쇼핑몰 리뷰 요약', '인터랙션', '', '쇼핑몰 리뷰 확인', '총 평점/가장 많은 평점/전체 리뷰수/더보기 버튼 노출', 'Pass', 'Fail', 'Pass', 'Pass', 'Pass'],
							['25', '', '', '', '', '', '쇼핑몰 리뷰 확인', '쇼핑몰 리뷰 미노출', 'Pass', 'Fail', 'Pass', 'Pass', 'Pass'],
							['26', '', '', '매거진', '인터랙션', '로그인', '매거진 확인', '타이틀의 매거진 / 더보기 버튼\n 이미지 / 서브타이틀 및 설명', 'Pass', 'Fail', 'Pass', 'Pass', 'Pass'],
							['27', '', '', '', '', '', '더보기 클릭', '매거진 더보기 화면으로 이동', 'Pass', 'Fail', 'Pass', 'Pass', 'Pass'],
							['28', '', '', '', '', '', '서브타이틀 클릭', '해당 매거진의 랜딩페이지로 이동', 'Pass', 'Fail', 'Pass', 'Pass', 'Pass'],
							['29', '', '', '쇼핑몰 리뷰 요약', '인터랙션', '', '쇼핑몰 리뷰 확인', '총 평점/가장 많은 평점/전체 리뷰수/더보기 버튼 노출', 'Pass', 'Fail', 'Pass', 'Pass', 'Pass'],
							['30', '', '', '', '', '', '쇼핑몰 리뷰 확인', '쇼핑몰 리뷰 미노출', 'Pass', 'Fail', 'Pass', 'Pass', 'Pass']
			    		],
				container1 = document.getElementById('example1'),
				settings1 = {
					data: data1,
					colHeaders: ['번호', '대분류', '중분류', '소분류', '기능', '조건', '액션', '기대결과', 'IE 10', 'IE 11', 'Chrome', 'Safari', 'FireFox'],
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
                    <strong>작업 전체환경 테스트결과</strong>
                </li>
            </ol>
        </div>
        <div class="col-lg-2">
            			
        </div>
    </div>
    
    <div class="wrapper wrapper-content  animated fadeInRight">
    
	    <div class="row">
			<div class="col-lg-8">     	
				<div class="ibox">
					<div class="ibox-title">
						<h5>테스트 현황</h5>
						<div class="ibox-tools">
			                <a class="collapse-link">
			                    <i class="fa fa-chevron-up"></i>
			                </a>
			                <a href="#">
			                    <i class="fa fa-rotate-left"></i>
			                </a>
						</div>
	                </div>
					<div class="ibox-content">
	                   	<div class="m-b-lg">
							<div class="m-t-md">	                                
	                            <table class="table table-bordered">
	                                <thead>
		                                <tr>
		                                	<th>TESTER</th>
		                                    <th>환경\결과</th>
		                                    <th>성공(P)</th>
		                                    <th>실패(F)</th>
		                                    <th>블록(B)</th>
		                                    <th>수행전(NI)</th>
		                                    <th>미수행(NR)</th>
		                                    <th>총합</th>
		                                    <th>진행률</th>
		                                    <th>성공률</th>
		                                </tr>
	                                </thead>
	                                <tbody>
		                                <tr>
		                                	<td>권영</td>
		                                    <td>IE 11</td>
		                                    <td>193</td>
		                                    <td>23</td>
		                                    <td>13</td>
		                                    <td>13</td>
		                                    <td>13</td>
		                                    <td>298</td>
		                                    <td>95%</td>
		                                    <td>95%</td>
		                                </tr>
		                                <tr>
		                                	<td>권영</td>
		                                    <td>IE 10</td>
		                                    <td>193</td>
		                                    <td>23</td>
		                                    <td>13</td>
		                                    <td>13</td>
		                                    <td>13</td>
		                                    <td>298</td>
		                                    <td>56%</td>
		                                    <td>95%</td>
		                                </tr>
		                                <tr>
		                                	<td>이동섭</td>
		                                	<td>Chrome</td>				                                    
		                                    <td>193</td>
		                                    <td>23</td>
		                                    <td>13</td>
		                                    <td>13</td>
		                                    <td>13</td>			                                    
		                                    <td>298</td>
		                                    <td>95%</td>
		                                    <td>95%</td>
		                                </tr>
		                                <tr>
		                                	<td>박성훈</td>
		                                    <td>Safari</td>
		                                    <td>193</td>
		                                    <td>23</td>
		                                    <td>13</td>
		                                    <td>13</td>
		                                    <td>13</td>
		                                    <td>298</td>
		                                    <td>56%</td>
		                                    <td>95%</td>
		                                </tr>
		                                <tr>
		                                	<td>전평재</td>
		                                	<td>FireFox</td>				                                    
		                                    <td>193</td>
		                                    <td>23</td>
		                                    <td>13</td>
		                                    <td>13</td>
		                                    <td>13</td>			                                    
		                                    <td>298</td>
		                                    <td>95%</td>
		                                    <td>95%</td>
		                                </tr>
	                                </tbody>
	                            </table>									
							</div>	
						</div>
					</div>
	           	</div>
			</div>
			
			<div class="col-lg-4">
	            <div class="row">
	            	<div class="col-lg-12">
						<div class="ibox">
		                	<div class="ibox-title">
		                        <h5>활동</h5>
				                <div class="ibox-tools">
					                <a class="collapse-link">
					                    <i class="fa fa-chevron-up"></i>
					                </a>
					                <a href="#">
					                    <i class="fa fa-rotate-left"></i>
					                </a>
					            </div>
		                    </div>
		                    <div class="ibox-content">
	                            <div class="row m-t-sm">
	                                <div class="col-lg-12">
		                                <div class="panel blank-panel">
			                                <div class="panel-heading">
			                                    <div class="panel-options">
			                                        <ul class="nav nav-tabs">
			                                            <li class="active"><a href="#tab-1" data-toggle="tab">댓글</a></li>
			                                            <li class=""><a href="#tab-2" data-toggle="tab">작업 기록</a></li>
			                                        </ul>
			                                    </div>
			                                </div>
		
			                                <div class="panel-body">			
				                                <div class="tab-content">
					                                <div class="tab-pane active" id="tab-1">
					                                    <div class="feed-activity-list">
					                                        <div class="feed-element">
					                                            <div class="media-body ">
					                                                <small class="pull-right">2h ago</small>
					                                                <strong>권영</strong> 님이 댓글을 추가했습니다.<br>
					                                                <small class="text-muted">Today 2:10 pm - 12.06.2014</small>
					                                                <div class="well">
					                                                	테스트 완료되시면 메신저로 메세지좀 남겨주세요.
					                                                </div>
					                                            </div>
					                                        </div>
					                                        <div class="feed-element">
					                                            <div class="media-body ">
					                                                <small class="pull-right">3h ago</small>
					                                                <strong>이동섭</strong> 님이 댓글을 수정하였습니다. <br>
					                                                <small class="text-muted">2 days ago at 8:30am</small>
					                                                <div class="well">
					                                                	뮤직 플레이어에서 TC 몇 개가 누락된 부분이 있어서 수정해 뒀어요.
					                                                </div>
					                                            </div>
					                                        </div>	                                        
					                                        <div class="feed-element">
					                                            <div class="media-body ">
					                                                <small class="pull-right">14h ago</small>
					                                                <strong>김정희</strong> 님이 댓글을 추가하였습니다. <br>
					                                                <small class="text-muted">2 days ago at 8:30am</small>
					                                                <div class="well">
					                                                	저한테 할당된 작업이 보이지 않아요. 추가 부탁드려요
					                                                </div>
					                                            </div>
					                                        </div>
					                                        <div class="feed-element">
					                                            <div class="media-body ">
					                                                <small class="pull-right">26h ago</small>
					                                                <strong>이선영</strong> 님이 댓글을 수정하였습니다. <br>
					                                                <small class="text-muted">2 days ago at 8:30am</small>
					                                                <div class="well">
					                                                	안해
					                                                </div>
					                                            </div>
					                                        </div>
					                                    </div>		
					                                </div>
					                                
					                                <div class="tab-pane" id="tab-2">		
					                                    <table class="table table-striped">
					                                        <thead>
						                                        <tr>
						                                            <th>사람</th>
						                                            <th>구분</th>
						                                            <th>시간</th>
						                                            <th>내용</th>
						                                        </tr>
						                                    </thead>
						                                    <tbody>
						                                        <tr>
						                                            <td>
																		권영
						                                            </td>
						                                            <td>
																		TC 작성
						                                            </td>
						                                            <td>
						                                                4 hour
						                                            </td>
						                                            <td>
							                                            <p class="small">
							                                                [뮤직플레이어] 템플릿 142 개
							                                            </p>
						                                            </td>			
						                                        </tr>
						                                        <tr>
						                                            <td>
																		이동섭
						                                            </td>
						                                            <td>
																		TC 수행
						                                            </td>
						                                            <td>
						                                                6.5 hour
						                                            </td>
						                                            <td>
							                                            <p class="small">
							                                                [마이뮤직] 242 개 
							                                            </p>
						                                            </td>			
						                                        </tr>
						                                        <tr>
						                                            <td>
																		이선영
						                                            </td>
						                                            <td>
																		TC 수행
						                                            </td>
						                                            <td>
						                                                0.5 hour
						                                            </td>
						                                            <td>
							                                            <p class="small">
							                                                [뮤직플레이어] 2 개 
							                                            </p>
						                                            </td>		
						                                        </tr>
					                                        </tbody>
					                                    </table>					
					                                </div>
				                                </div>			
			                                </div>		
		                                </div>
	                                </div>
	                            </div>
                            </div>
		            	</div>
	            	</div>
	            </div>
			</div>
		</div>

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