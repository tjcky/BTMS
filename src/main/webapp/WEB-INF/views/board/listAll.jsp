<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ page session="false"%>

<script src="/resources/javascript/board/board.js"></script>
<!-- Main content -->
<section class="content">
	<div class="row">
		<!-- left column -->

		<div class="col-md-12">

			<div class="box-body">
				<table class="table table-bordered">
					<tr>
						<th style="width: 10px">BNO</th>
						<th>TITLE</th>
						<th>WRITER</th>
						<th>REGDATE</th>
						<th style="width: 40px">VIEWCNT</th>
					</tr>

					<c:forEach items="${list}" var="boardModel">

						<tr>
							<td>${boardModel.bno}</td>
							<td><a href="javascript:readBoard('${boardModel.bno}')">${boardModel.title} </a></td>
							<td>${boardModel.writer}</td>
							<td><fmt:formatDate pattern="yyyy-MM-dd HH:mm" value="${boardModel.regdate}" /></td>
							<td><span class="badge bg-red">${boardModel.viewcnt }</span></td>
						</tr>

					</c:forEach>

				</table>
			</div>
			<!-- /.box-body -->

		</div>
		<!--/.col (left) -->

	</div>
	<!-- /.row -->
</section>
<!-- /.content -->


<script>
	var result = '${msg}';

	if (result == 'SUCCESS') {
		alert("처리가 완료되었습니다.");
	}
</script>