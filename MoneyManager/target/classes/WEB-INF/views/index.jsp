<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<c:set var="root" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>MoneyManager</title>
    <style>
/*         body {
            background-color: #000;
            color: #fff;
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
        } */

        .container {
            width: 80%;
            margin: 0 auto;
            padding: 20px;
        }


        .news {
            margin-bottom: 20px;
        }

        .stock-info {
            text-align: center;
            font-size: 20px;
            margin-top: 20px;
        }

        .stock-table {
            width: 60%;
            margin: 0 auto;
            border-collapse: collapse;
            text-align: left;
        }

        .stock-table th,
        .stock-table td {
            border: 1px solid #fff;
            padding: 10px;
        }

        .stock-table th {
            background-color: #333;
        }

        .stock-table td {
            background-color: #444;
        }
    </style>
</head>
<body>
	
	<%@include  file="./common/header.jsp"%>
	<%@include  file="./common/login.jsp"%>
    <div class="container">
        
        <div class="news">
            <h2>경제 뉴스</h2>
            <!-- 여기에 경제 뉴스 내용을 표시할 부분을 추가 -->
            <p>경제 뉴스 내용을 여기에 추가합니다.</p>
        </div>
        
        <div class="stock-info">
            <h2>주식 정보</h2>
            <table class="stock-table">
                <thead>
                    <tr>
                        <th>회사명</th>
                        <th>가격</th>
                        <th>변동</th>
                    </tr>
                </thead>
                <tbody>
                    <!-- 여기에 주식 정보를 표시할 부분을 추가 -->
                    <tr>
                        <td>회사 A</td>
                        <td>$100</td>
                        <td>+5%</td>
                    </tr>
                    <tr>
                        <td>회사 B</td>
                        <td>$150</td>
                        <td>-3%</td>
                    </tr>
                    <!-- 예시 데이터입니다. 실제 주식 정보를 가져와서 표시해야 합니다. -->
                </tbody>
            </table>
        </div>
    </div>
</body>
</html>