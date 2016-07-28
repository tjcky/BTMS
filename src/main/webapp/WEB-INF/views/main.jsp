<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c"   uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>

<head>
    <title>BTMS Main</title>
</head>

<body>
<div class="wrapper wrapper-content">
	<div class="row">
        <div class="col-lg-6">
	        <div class="ibox float-e-margins">
		        <div class="ibox-title">
		            <h5>자유게시판 </h5>
		            <div class="ibox-tools">
		                <a class="collapse-link">
		                    <i class="fa fa-chevron-up"></i>
		                </a>
		                <a class="close-link">
		                    <i class="fa fa-times"></i>
		                </a>
		            </div>
		        </div>
		        <div class="ibox-content">			
		            <div class="table-responsive">
		                <table class="table table-striped">
		                    <thead>
		                    <tr>
		                        <th>#</th>
		                        <th>제목 </th>
		                        <th>작성자 </th>
		                        <th>작성일 </th>
		                    </tr>
		                    </thead>
		                    <tbody>
		                    <tr>
		                        <td>5</td>
		                        <td>정적 테스트 이야기</td>
		                        <td>권영</td>
		                        <td>오늘</td>
		                    </tr>
		                    <tr>
		                        <td>4</td>
		                        <td>부트스트랩 고수가 되는 방법.txt</td>
		                        <td>이동섭</td>
		                        <td>오늘</td>
		                    </tr>
		                    <tr>
		                        <td>3</td>
		                        <td>고객시스템개발팀</td>
		                        <td>이선영</td>
		                        <td>어제</td>
		                    </tr>
		                    <tr>
		                        <td>2</td>
		                        <td>MySQL 이야기</td>
		                        <td>김경연</td>
		                        <td>그제</td>
		                    </tr>
		                    <tr>
		                        <td>1</td>
		                        <td>테스트 시작</td>
		                        <td>전평재</td>
		                        <td>2016.06.23</td>
		                    </tr>
		                    </tbody>
		                </table>
		            </div>
		
		        </div>
	        </div>
        </div>
        
        <div class="col-lg-6">
	        <div class="row">
		        <div class="ibox float-e-margins">
			        <div class="ibox-title">
			            <h5>전체 프로젝트 목록 </h5>
			            <div class="ibox-tools">
			                <a class="collapse-link">
			                    <i class="fa fa-chevron-up"></i>
			                </a>
			                <a class="close-link">
			                    <i class="fa fa-times"></i>
			                </a>
			            </div>
			        </div>
			        <div class="ibox-content">			
			            <div class="table-responsive">
			                <table class="table table-striped">
			                    <thead>
			                    <tr>
			                        <th>#</th>
			                        <th>프로젝트 ID </th>
			                        <th>프로젝트명 </th>
			                        <th>관리자</th>
			                    </tr>
			                    </thead>
			                    <tbody>
				                    <c:forEach var="project" items="${totalProject}">
					                    <tr>
					                        <td>${project.sequence} </td>
					                        <td><a href="/project/${project.addressId}"/>${project.addressId}</td>
					                        <td><a href="/project/${project.addressId}"/>${project.name} </td>
					                        <td>${project.managerName} </td>
					                    </tr>
				                	</c:forEach>
			                    </tbody>
			                </table>
			            </div>
			
			        </div>
		        </div>
	        </div>
        
	        <div class="row">
		        <div class="ibox float-e-margins">
			        <div class="ibox-title">
			            <h5>담당 프로젝트 목록 </h5>
			            <div class="ibox-tools">
			                <a class="collapse-link">
			                    <i class="fa fa-chevron-up"></i>
			                </a>
			                <a class="close-link">
			                    <i class="fa fa-times"></i>
			                </a>
			            </div>
			        </div>
			        <div class="ibox-content">			
			            <div class="table-responsive">
			                <table class="table table-striped">
			                    <thead>
			                    <tr>
			                        <th>#</th>
			                        <th>프로젝트 ID </th>
			                        <th>프로젝트명 </th>
			                        <th>관리자</th>
			                        <th>롤</th>
			                    </tr>
			                    </thead>
			                    <tbody>
				                    <c:forEach var="project" items="${myProject}">
					                    <tr>
					                        <td>${project.sequence} </td>
					                        <td>${project.addressId}</td>
					                        <td>${project.name} </td>
					                        <td>${project.managerName} </td>
					                        <td>${project.myRole} </td>
					                    </tr>
				                	</c:forEach>
			                    </tbody>
			                </table>
			            </div>			
			        </div>
		        </div>
	        </div>
        </div>
       </div>
	</div>
</body>
</html>
