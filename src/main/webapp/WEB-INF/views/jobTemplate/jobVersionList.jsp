<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>

<head>
    <title>Job 버전 템플릿 목록</title>

</head>

<body>
	<div class="wrapper wrapper-content  animated fadeInRight">
        <div class="row">
			<div class="col-lg-12">
                <div class="ibox">
                	<div class="ibox-title">
                        <h5>작업 템플릿 목록</h5>
                        <div class="ibox-tools">
                            <a href="" class="btn btn-primary btn-xs">+ 버전추가</a>
                        </div>
                    </div>
                    <div class="ibox-content">
                    	<div class="m-b-lg">
                            <div class="m-t-md">
                                <strong>총 4개의 뮤직플레이어 템플릿</strong>
                            </div>
                        </div>
                        
                        <div class="container">
							<div class="row">
						        <div class="col-md-12">
						        	<div class="table-responsive">						                
						            	<table id="mytable" class="table table-bordred table-striped">
						                	<thead>
							                   <th>#</th>
							                   <th>버전명</th>
							                   <th>단위 TC</th>
							                   <th>상태</th>
							                   <th>작성자</th>
							                   <th>작성일</th>
							                   <th>수정자</th>
							                   <th>수정일</th>
							                   <th>EDIT</th>
							                   <th>DELETE</th>
						                   </thead>
									    <tbody>									    
										    <tr>
											    <td>5</td>
											    <td><a href="http://10.113.182.210/kcmsus/jobDetail">2016년 7월 1주</a></td>
											    <td>152</td>
											    <td>진행중</td>
											    <td>권영</td>
											    <td>2016.06.29</td>
											    <td>권영</td>
											    <td>2016.06.29</td>
											    <td><p data-placement="top" data-toggle="tooltip" title="Edit"><button class="btn btn-primary btn-xs" data-title="Edit" data-toggle="modal" data-target="#edit" ><span class="glyphicon glyphicon-pencil"></span></button></p></td>
											    <td><p data-placement="top" data-toggle="tooltip" title="Delete"><button class="btn btn-danger btn-xs" data-title="Delete" data-toggle="modal" data-target="#delete" ><span class="glyphicon glyphicon-trash"></span></button></p></td>
										    </tr>
										    <tr>
											    <td>4</td>
											    <td><a href="http://10.113.182.210/kcmsus/jobDetail">2016년 6월 5주</a></td>
											    <td>252</td>
											    <td>진행중</td>
											    <td>이동섭</td>
											    <td>2016.06.29</td>
											    <td>권영</td>
											    <td>2016.06.29</td>
											    <td><p data-placement="top" data-toggle="tooltip" title="Edit"><button class="btn btn-primary btn-xs" data-title="Edit" data-toggle="modal" data-target="#edit" ><span class="glyphicon glyphicon-pencil"></span></button></p></td>
											    <td><p data-placement="top" data-toggle="tooltip" title="Delete"><button class="btn btn-danger btn-xs" data-title="Delete" data-toggle="modal" data-target="#delete" ><span class="glyphicon glyphicon-trash"></span></button></p></td>
										    </tr>
										    <tr>
											    <td>3</td>
											    <td><a href="http://10.113.182.210/kcmsus/jobDetail">2016년 6월 3주</a></td>
											    <td>112</td>
											    <td>완료</td>
											    <td>이선영</td>
											    <td>2016.06.29</td>
											    <td>전평재</td>
											    <td>2016.06.29</td>
											    <td><p data-placement="top" data-toggle="tooltip" title="Edit"><button class="btn btn-primary btn-xs" data-title="Edit" data-toggle="modal" data-target="#edit" ><span class="glyphicon glyphicon-pencil"></span></button></p></td>
											    <td><p data-placement="top" data-toggle="tooltip" title="Delete"><button class="btn btn-danger btn-xs" data-title="Delete" data-toggle="modal" data-target="#delete" ><span class="glyphicon glyphicon-trash"></span></button></p></td>
										    </tr>
										    <tr>
											    <td>2</td>
											    <td><a href="http://10.113.182.210/kcmsus/jobDetail">2016년 6월 2주</a></td>
											    <td>232</td>
											    <td>완료</td>
											    <td>김정희</td>
											    <td>2016.06.29</td>
											    <td>조문기</td>
											    <td>2016.06.29</td>
											    <td><p data-placement="top" data-toggle="tooltip" title="Edit"><button class="btn btn-primary btn-xs" data-title="Edit" data-toggle="modal" data-target="#edit" ><span class="glyphicon glyphicon-pencil"></span></button></p></td>
											    <td><p data-placement="top" data-toggle="tooltip" title="Delete"><button class="btn btn-danger btn-xs" data-title="Delete" data-toggle="modal" data-target="#delete" ><span class="glyphicon glyphicon-trash"></span></button></p></td>
										    </tr>
										    <tr>
											    <td>1</td>
											    <td><a href="http://10.113.182.210/kcmsus/jobDetail">2016년 7월 1주</a></td>
											    <td>152</td>
											    <td>진행중</td>
											    <td>권영</td>
											    <td>2016.06.29</td>
											    <td>권영</td>
											    <td>2016.06.29</td>
											    <td><p data-placement="top" data-toggle="tooltip" title="Edit"><button class="btn btn-primary btn-xs" data-title="Edit" data-toggle="modal" data-target="#edit" ><span class="glyphicon glyphicon-pencil"></span></button></p></td>
											    <td><p data-placement="top" data-toggle="tooltip" title="Delete"><button class="btn btn-danger btn-xs" data-title="Delete" data-toggle="modal" data-target="#delete" ><span class="glyphicon glyphicon-trash"></span></button></p></td>
										    </tr>										    
									    </tbody>
						        
						</table>
						
						<div class="clearfix"></div>
						<ul class="pagination pull-right">
						  <li class="disabled"><a href="#"><span class="glyphicon glyphicon-chevron-left"></span></a></li>
						  <li class="active"><a href="#">1</a></li>
						  <li><a href="#">2</a></li>
						  <li><a href="#">3</a></li>
						  <li><a href="#">4</a></li>
						  <li><a href="#">5</a></li>
						  <li><a href="#"><span class="glyphicon glyphicon-chevron-right"></span></a></li>
						</ul>
						                
						            </div>
						            
						        </div>
							</div>
						</div>
						
						
						<div class="modal fade" id="edit" tabindex="-1" role="dialog" aria-labelledby="edit" aria-hidden="true">
						      <div class="modal-dialog">
						    <div class="modal-content">
						          <div class="modal-header">
						        <button type="button" class="close" data-dismiss="modal" aria-hidden="true"><span class="glyphicon glyphicon-remove" aria-hidden="true"></span></button>
						        <h4 class="modal-title custom_align" id="Heading">Edit Your Detail</h4>
						      </div>
						          <div class="modal-body">
						          <div class="form-group">
						        <input class="form-control " type="text" placeholder="Mohsin">
						        </div>
						        <div class="form-group">
						        
						        <input class="form-control " type="text" placeholder="Irshad">
						        </div>
						        <div class="form-group">
						        <textarea rows="2" class="form-control" placeholder="CB 106/107 Street # 11 Wah Cantt Islamabad Pakistan"></textarea>
						    
						        
						        </div>
						      </div>
						          <div class="modal-footer ">
						        <button type="button" class="btn btn-warning btn-lg" style="width: 100%;"><span class="glyphicon glyphicon-ok-sign"></span> Update</button>
						      </div>
						        </div>
						    <!-- /.modal-content --> 
						  </div>
						      <!-- /.modal-dialog --> 
						    </div>
						    
						    
						    
						    <div class="modal fade" id="delete" tabindex="-1" role="dialog" aria-labelledby="edit" aria-hidden="true">
						      <div class="modal-dialog">
						    <div class="modal-content">
						          <div class="modal-header">
						        <button type="button" class="close" data-dismiss="modal" aria-hidden="true"><span class="glyphicon glyphicon-remove" aria-hidden="true"></span></button>
						        <h4 class="modal-title custom_align" id="Heading">Delete this entry</h4>
						      </div>
						          <div class="modal-body">
						       
						       <div class="alert alert-danger"><span class="glyphicon glyphicon-warning-sign"></span> Are you sure you want to delete this Record?</div>
						       
						      </div>
						        <div class="modal-footer ">
						        <button type="button" class="btn btn-success" ><span class="glyphicon glyphicon-ok-sign"></span> Yes</button>
						        <button type="button" class="btn btn-default" data-dismiss="modal"><span class="glyphicon glyphicon-remove"></span> No</button>
						      </div>
						        </div>
						    <!-- /.modal-content --> 
						  </div>
						      <!-- /.modal-dialog --> 
						    </div>
                        
                    </div>
            	</div>
        </div>
        </div>
    </div>  
</body>
</html>