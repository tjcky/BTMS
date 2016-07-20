<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>

<head>
    <title>Job 템플릿 목록</title>

    <script>
		$(document).on('click', '.panel-heading span.clickable', function(e){
		    var $this = $(this);
			if(!$this.hasClass('panel-collapsed')) {
				$this.parents('.panel').find('.panel-body').slideUp();
				$this.addClass('panel-collapsed');
				$this.find('i').removeClass('glyphicon-chevron-up').addClass('glyphicon-chevron-down');
			} else {
				$this.parents('.panel').find('.panel-body').slideDown();
				$this.removeClass('panel-collapsed');
				$this.find('i').removeClass('glyphicon-chevron-down').addClass('glyphicon-chevron-up');
			}
		})

    </script>
    <style type="text/css">
		.panel-heading span {
			font-size: 15px;
		}
    </style>
</head>

<body>
        <div class="wrapper wrapper-content  animated fadeInRight">
            <div class="row">
                <div class="col-lg-12">
                    <div class="ibox">
                        <div class="ibox-title">
                            <h5>작업 템플릿 목록</h5>
                            <div class="ibox-tools">
                                <a href="" class="btn btn-primary btn-xs">+ 작업추가</a>
                            </div>
                        </div>
                        <div class="ibox-content">
                            <div class="m-b-lg">
                                <div class="m-t-md">
                                    <strong>총 4개의 작업 템플릿</strong>
                                </div>

                            </div>

							<div class="container">
								<div class="row">
									<div class="col-md-12">
										<div class="panel panel-success">
											<div class="panel-heading" style="height:50px;">
												<div class="row">
													<div class="col-md-3">													
														<h3 class="pull-left panel-title">마이 뮤직</h3>
													</div>
													<div class="col-md-3">													
														<h3 class="pull-left panel-title">생성자 : 권영</h3>
													</div>
													<div class="col-md-6">
														<span class="pull-right clickable">
															<i class="glyphicon glyphicon-chevron-up"></i>
														</span>
														<button type="button" class="btn btn-w-m btn-sm btn-warning" onclick="location.href='http://10.113.182.210/kcmsus/jobVersionList';" style="margin-left:200px;">전체보기</button>
														<button type="button" class="btn btn-w-m btn-sm btn-danger" style="margin-left:10px;">+버전추가</button>
													</div>													

												</div>
											</div>
											<div class="panel-body">
					                            <table class="table table-bordered">
					                                <thead>
					                                <tr>
					                                    <th>#</th>
					                                    <th>버전명</th>
					                                    <th>단위TC</th>
					                                    <th>상태</th>
					                                    <th>작성자</th>
					                                    <th>작성일</th>
					                                </tr>
					                                </thead>
					                                <tbody>
					                                <tr>
					                                    <td>3</td>
					                                    <td><a href="http://10.113.182.210/kcmsus/jobDetail">2016년 7월 1주</a></td>
					                                    <td>152</td>
					                                    <td>진행중</td>
					                                    <td>권영</td>
					                                    <th>오늘</th>
					                                </tr>
					                                <tr>
					                                    <td>2</td>
					                                    <td><a href="http://10.113.182.210/kcmsus/jobDetail">2016년 6월 4주</a></td>
					                                    <td>252</td>
					                                    <td>완료</td>
					                                    <td>이동섭</td>
					                                    <th>어제</th>
					                                </tr>
					                                <tr>
					                                    <td>1</td>
					                                    <td><a href="http://10.113.182.210/kcmsus/jobDetail">2016년 6월 3주</a></td>
					                                    <td>352</td>
					                                    <td>진행중</td>
					                                    <td>전평재</td>
					                                    <th>2016.6.23</th>
					                                </tr>
					                                </tbody>
					                            </table>
											</div>
										</div>
									</div>
								</div>
								<div class="row">
									<div class="col-md-12">
										<div class="panel panel-success">
											<div class="panel-heading" style="height:50px;">
												<div class="row">
													<div class="col-md-3">													
														<h3 class="pull-left panel-title">뮤직 플레이어</h3>
													</div>
													<div class="col-md-3">													
														<h3 class="pull-left panel-title">생성자 : 이동섭</h3>
													</div>
													<div class="col-md-6">
														<span class="pull-right clickable">
															<i class="glyphicon glyphicon-chevron-up"></i>
														</span>	
														<button type="button" class="btn btn-w-m btn-sm btn-warning" onclick="location.href='http://10.113.182.210/kcmsus/jobVersionList';" style="margin-left:200px;">전체보기</button>
														<button type="button" class="btn btn-w-m btn-sm btn-danger" style="margin-left:10px;">+버전추가</button>
													</div>													

												</div>
											</div>
											<div class="panel-body">
					                            <table class="table table-bordered">
					                                <thead>
					                                <tr>
					                                    <th>#</th>
					                                    <th>버전명</th>
					                                    <th>단위TC</th>
					                                    <th>상태</th>
					                                    <th>작성자</th>
					                                    <th>작성일</th>
					                                </tr>
					                                </thead>
					                                <tbody>
					                                <tr>
					                                    <td>3</td>
					                                    <td><a href="http://10.113.182.210/kcmsus/jobDetail">2016년 7월 1주</a></td>
					                                    <td>152</td>
					                                    <td>진행중</td>
					                                    <td>권영</td>
					                                    <th>오늘</th>
					                                </tr>
					                                <tr>
					                                    <td>2</td>
					                                    <td><a href="http://10.113.182.210/kcmsus/jobDetail">2016년 6월 4주</a></td>
					                                    <td>252</td>
					                                    <td>완료</td>
					                                    <td>이동섭</td>
					                                    <th>어제</th>
					                                </tr>
					                                <tr>
					                                    <td>1</td>
					                                    <td><a href="http://10.113.182.210/kcmsus/jobDetail">2016년 6월 3주</a></td>
					                                    <td>352</td>
					                                    <td>진행중</td>
					                                    <td>전평재</td>
					                                    <th>2016.6.23</th>
					                                </tr>
					                                </tbody>
					                            </table>
											</div>
										</div>
									</div>
								</div>
								<div class="row">
									<div class="col-md-12">
										<div class="panel panel-success">
											<div class="panel-heading" style="height:50px;">
												<div class="row">
													<div class="col-md-3">													
														<h3 class="pull-left panel-title">뮤직 상품권 결재</h3>
													</div>
													<div class="col-md-3">													
														<h3 class="pull-left panel-title">생성자 : 이선영</h3>
													</div>
													<div class="col-md-6">
														<span class="pull-right clickable">
															<i class="glyphicon glyphicon-chevron-up"></i>
														</span>	
														<button type="button" class="btn btn-w-m btn-sm btn-warning" onclick="location.href='http://10.113.182.210/kcmsus/jobVersionList';" style="margin-left:200px;">전체보기</button>
														<button type="button" class="btn btn-w-m btn-sm btn-danger" style="margin-left:10px;">+버전추가</button>
													</div>													

												</div>
											</div>
											<div class="panel-body">
					                            <table class="table table-bordered">
					                                <thead>
					                                <tr>
					                                    <th>#</th>
					                                    <th>버전명</th>
					                                    <th>단위TC</th>
					                                    <th>상태</th>
					                                    <th>작성자</th>
					                                    <th>작성일</th>
					                                </tr>
					                                </thead>
					                                <tbody>
					                                <tr>
					                                    <td>3</td>
					                                    <td><a href="http://10.113.182.210/kcmsus/jobDetail">2016년 7월 1주</a></td>
					                                    <td>152</td>
					                                    <td>진행중</td>
					                                    <td>권영</td>
					                                    <th>오늘</th>
					                                </tr>
					                                <tr>
					                                    <td>2</td>
					                                    <td><a href="http://10.113.182.210/kcmsus/jobDetail">2016년 6월 4주</a></td>
					                                    <td>252</td>
					                                    <td>완료</td>
					                                    <td>이동섭</td>
					                                    <th>어제</th>
					                                </tr>
					                                <tr>
					                                    <td>1</td>
					                                    <td><a href="http://10.113.182.210/kcmsus/jobDetail">2016년 6월 3주</a></td>
					                                    <td>352</td>
					                                    <td>진행중</td>
					                                    <td>전평재</td>
					                                    <th>2016.6.23</th>
					                                </tr>
					                                </tbody>
					                            </table>
											</div>
										</div>
									</div>
								</div>
								<div class="row">
									<div class="col-md-12">
										<div class="panel panel-success">
											<div class="panel-heading" style="height:50px;">
												<div class="row">
													<div class="col-md-3">													
														<h3 class="pull-left panel-title">뮤지션 리그</h3>
													</div>
													<div class="col-md-3">													
														<h3 class="pull-left panel-title">생성자 : 김정희</h3>
													</div>
													<div class="col-md-6">
														<span class="pull-right clickable">
															<i class="glyphicon glyphicon-chevron-up"></i>
														</span>	
														<button type="button" class="btn btn-w-m btn-sm btn-warning" onclick="location.href='http://10.113.182.210/kcmsus/jobVersionList';" style="margin-left:200px;">전체보기</button>
														<button type="button" class="btn btn-w-m btn-sm btn-danger" style="margin-left:10px;">+버전추가</button>
													</div>													

												</div>
											</div>
											<div class="panel-body">
					                            <table class="table table-bordered">
					                                <thead>
					                                <tr>
					                                    <th>#</th>
					                                    <th>버전명</th>
					                                    <th>단위TC</th>
					                                    <th>상태</th>
					                                    <th>작성자</th>
					                                    <th>작성일</th>
					                                </tr>
					                                </thead>
					                                <tbody>
					                                <tr>
					                                    <td>3</td>
					                                    <td><a href="http://10.113.182.210/kcmsus/jobDetail">2016년 7월 1주</a></td>
					                                    <td>152</td>
					                                    <td>진행중</td>
					                                    <td>권영</td>
					                                    <th>오늘</th>
					                                </tr>
					                                <tr>
					                                    <td>2</td>
					                                    <td><a href="http://10.113.182.210/kcmsus/jobDetail">2016년 6월 4주</a></td>
					                                    <td>252</td>
					                                    <td>완료</td>
					                                    <td>이동섭</td>
					                                    <th>어제</th>
					                                </tr>
					                                <tr>
					                                    <td>1</td>
					                                    <td><a href="http://10.113.182.210/kcmsus/jobDetail">2016년 6월 3주</a></td>
					                                    <td>352</td>
					                                    <td>진행중</td>
					                                    <td>전평재</td>
					                                    <th>2016.6.23</th>
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
</body>
</html>