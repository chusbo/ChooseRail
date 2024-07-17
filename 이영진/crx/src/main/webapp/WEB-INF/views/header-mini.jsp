<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
    String schoolVO = (String) session.getAttribute("schoolVO");
%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <style>
        .miniheader {
            height: 30px; /* 원하는 높이 */
            background-color: rgb(84, 130, 53);
            display: flex;
            justify-content: flex-end; /* 오른쪽으로 정렬 */
            align-items: center;
        }

        .minilist {
            font-size: 15px;	        
            text-decoration: none;
            color: black;      
            text-decoration: none;
            color: white;
            margin-left: 15px; /* 링크 간격 */
        }
    </style>
</head>
<body>
    <nav class="miniheader">
        <div class="right-container">
            <span class="minilist">님</span>
            <a class="minilist" href="#">
                <span>로그아웃</span>
            </a>
            <a class="minilist" href="#">
                <span>마이페이지</span>
            </a>
        </div>
    </nav>
</body>
</html>
