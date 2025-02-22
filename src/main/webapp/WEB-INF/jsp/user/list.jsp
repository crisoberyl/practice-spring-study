<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@include file="/WEB-INF/jsp/common/el.jspf" %>

<h1>회원 목록</h1>
<table class="table table-bordered">
    <thead>
    <tr>
        <th>이름</th>
        <th>비밀번호</th>
        <th>가입일</th>
    <tr>
    </thead>
    <c:forEach items="${listObj.list}" var="list">
        <tr onclick="getUser('${list.username}')" style="cursor: pointer;">
            <td>${list.username}</td>
            <td>${fn:substring(list.password,0,2)}**</td>
            <td>${list.joinDate}</td>
        </tr>
    </c:forEach>
</table>
<!--// 페이징과 버튼 부분 -->
<div class="paging_all c_box">
    <!--// 페이징 부분 -->
    <div class="paging">
        <ul>
            <ui:pagination paginationInfo="${listObj.paginationInfo}" type="text" jsFunction="getPageList"/>
        </ul>
    </div>
    <!-- 페이징 부분 //-->
</div>
<!-- 페이징과 버튼 부분 //-->
<form name="frm">
    <input type="hidden" name="p" value="${vo.p }"/>
</form>

<script type="text/javascript">
  function getUser(name) {
    location.href = "/user/" + name + ".do";
  }

  function getPageList(page) {
    var f = document.frm;
    f.action = "./list.do";
    f.p.value = page;
    f.submit();
  }
</script>


