<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<div class="listdiv">
	<input type=hidden name="btype" value="${param.btype}">
	<c:choose>
	<c:when test="${result_size  != 0}">
		<table>
			<thead>
				<tr>
					<th>번호</th>
					<th width="800px">제목</th>
					<th>작성일시</th>
				</tr>
			</thead>
			<tbody>
			<c:forEach var="vo" items="${data}" varStatus="status">
				<tr>
					<td>${vo.bid}</td>
					<td><a href="boardDetail.bo?btype=${param.btype}&bid=${vo.bid}&page=${param.page}">
						${vo.btitle}</a> 
						</td>
					<td>${vo.bregdate}</td>
				</tr>
			</c:forEach>
			</tbody>
		</table>
		<div>
		<b>
		<a href="boardList.bo?btype=${param.btype}&page=1"> << </a> 
		<a href="boardList.bo?btype=${param.btype}&page=${param.page-1}"> < </a>
			<c:forEach var="pp" begin="1" end="${indexCount}" step="1">
				<span><a href="boardList.bo?btype=${param.btype}&page=${pp}">${pp}</a></span>
			</c:forEach>
		<a href="boardList.bo?btype=${param.btype}&page=${param.page+1}"> > </a>
		<a href="boardList.bo?btype=${param.btype}&page=${indexCount}"> >> </a>
		</b>	
		</div>
		</c:when>
		<c:otherwise>
			게시글이 없습니다.
		</c:otherwise>
		</c:choose>
		<input type="submit" value="글쓰기" onclick="location.href='boardWrite.bo?btype=${param.btype}&bid=0'">
</div>