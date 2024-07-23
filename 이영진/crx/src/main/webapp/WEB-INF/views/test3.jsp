<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" isELIgnored="false" %>    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="contextPath" value="${pageContext.request.contextPath}"/>

<!DOCTYPE html>
<html>
<head>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
    <title>일반승차권 예매</title>
    <style>
        .all {
            width: 1200px;
            margin: 0 auto; /* 중앙 정렬 */
        }
        .tiline {
            display: inline;
            border: solid 1px green;
            border-radius: 8px;
            padding: 5px;
            color: green;
            margin: 5px;
        }
        .mid {
            height: 300px;
            background: #f8f8f8;
        }
        .relist {
            margin: 0 5px;
            padding: 5px;
        }
        .rt {
            margin: 3px;
        }
        .search {
            text-align: center;
        }
        .minititle a {
            color: #000000;
        }
        table, th, td {
            border: 2px solid white;
            border-collapse: collapse;
        }
        #Date {
            width: 140px;
            display: inline;
        }
        .checkTrain {
            border: 2px solid white;
            border-collapse: collapse;
        }
    </style>
</head>
<body>
    <jsp:include page="header.jsp" />
    <div class="all">
        <div class="maintitle">
            <h1>일반승차권</h1>
            <hr>
        </div>
        <br>
        <div style="text-align:center;">
            <img src="../img/mark1.gif" style="width:500px">
        </div>
        <br>
        <div>
            <br>
            <ul class="nav nav-tabs">
                <li class="minititle nav-item">
                    <a class="nav-link active bg-light" aria-current="page" href="ticket.do">일반승차권 조회</a>
                </li>
                <li class="minititle nav-item">
                    <a class="nav-link" href="groupTicket.do">단체승차권 조회</a>
                </li>
            </ul>
        </div>
        <div class="mid">
            <div>
                <div class="relist">
                    <br>
                    <div class="rt">
                        <label for="start">출발역</label>
                        <input id="start" name="txtGoStart" type="text" class="inp200" value="대전" onchange="hideResult();" title="출발역" autocomplete="off" style="ime-mode:active">
                        &nbsp;&nbsp;&nbsp;
                        <label for="end">도착역</label>
                        <input id="end" name="txtGoEnd" type="text" class="inp200" value="서울" onchange="hideResult();" title="도착역" autocomplete="off" style="ime-mode:active">
                    </div>
                    <br>
                    <div class="rt">
                        <label for="Date">출발일</label>
                        <input type="date" id="Date" name="lostItemRegDate">        
                        &nbsp;&nbsp;
                        <label for="listtime">시간</label>
                        <select id="listtime">
                            <option value="08" selected="selected">08</option>
                            <option value="10">10</option>
                            <option value="12">12</option>
                            <option value="14">14</option>
                            <option value="16">16</option>
                            <option value="18">18</option>
                            <option value="20">20</option>
                            <option value="22">22</option>
                            <option value="24">24</option>
                        </select>
                        <label>시</label>    
                    </div>
                    <br>
                    <div class="rt">
                        <div>
                            <label for="personnel">인원정보</label>
                            <select id="personnel">
                                <option value="어른 0명">어른(만13세 이상) 0명</option>
                                <option value="어른 1명" selected="selected">어른(만13세 이상) 1명</option>
                                <option value="어른 2명">어른(만13세 이상) 2명</option>
                                <option value="어른 3명">어른(만13세 이상) 3명</option>
                                <option value="어른 4명">어른(만13세 이상) 4명</option>
                                <option value="어른 5명">어른(만13세 이상) 5명</option>
                                <option value="어른 6명">어른(만13세 이상) 6명</option>
                                <option value="어른 7명">어른(만13세 이상) 7명</option>
                                <option value="어른 8명">어른(만13세 이상) 8명</option>
                                <option value="어른 9명">어른(만13세 이상) 9명</option>
                                <option value="어른 10명">어른(만13세 이상) 10명</option>
                            </select>
                            <label>명</label>
                            &nbsp;&nbsp;
                            <select id="child">
                                <option value="어린이 0명" selected="selected">어린이(만6~12세) 0명</option>
                                <option value="어린이 1명">어린이(만6~12세) 1명</option>
                                <option value="어린이 2명">어린이(만6~12세) 2명</option>
                                <option value="어린이 3명">어린이(만6~12세) 3명</option>
                                <option value="어린이 4명">어린이(만6~12세) 4명</option>
                                <option value="어린이 5명">어린이(만6~12세) 5명</option>
                                <option value="어린이 6명">어린이(만6~12세) 6명</option>
                                <option value="어린이 7명">어린이(만6~12세) 7명</option>
                                <option value="어린이 8명">어린이(만6~12세) 8명</option>
                                <option value="어린이 9명">어린이(만6~12세) 9명</option>
                                <option value="어린이 10명">어린이(만6~12세) 10명</option>
                            </select>
                            <label>명</label>
                            &nbsp;&nbsp;
                            <select id="old">
                                <option value="경로 0명" selected="selected">경로(만 65세 이상) 0명</option>
                                <option value="경로 1명">경로(만 65세 이상) 1명</option>
                                <option value="경로 2명">경로(만 65세 이상) 2명</option>
                                <option value="경로 3명">경로(만 65세 이상) 3명</option>
                                <option value="경로 4명">경로(만 65세 이상) 4명</option>
                                <option value="경로 5명">경로(만 65세 이상) 5명</option>
                                <option value="경로 6명">경로(만 65세 이상) 6명</option>
                                <option value="경로 7명">경로(만 65세 이상) 7명</option>
                                <option value="경로 8명">경로(만 65세 이상) 8명</option>
                                <option value="경로 9명">경로(만 65세 이상) 9명</option>
                                <option value="경로 10명">경로(만 65세 이상) 10명</option>
                            </select>
                            <label>명</label>    
                        </div>
                    </div>
                    <br>
                    <div class="rt">
                        <label for="seattype">좌석종류</label>
                        <select id="seattype">
                            <option value="좌석 종류" selected="selected">좌석 종류</option>
                            <option value="일반">일반</option>
                            <option value="특실">특실</option>
                        </select>                    
                    </div>
                    <br>
                    <div class="rt">
                        <label for="trainType">차종구분</label>
                        &nbsp;
                        <input class="form-check-input" type="radio" name="flexRadioDefault" id="CRX">
                        <label class="form-check-label" for="CRX">CRX</label>
                        &nbsp;
                        <input class="form-check-input" type="radio" name="flexRadioDefault" id="KTX" checked>
                        <label class="form-check-label" for="KTX">KTX</label>
                    </div>
                    <br><br>
                    <div class="search">
                        <button type="button" class="btn btn-success" onclick="searchTrains()">조회하기</button>
                    </div>
                    <div class="result" id="result" style="display: none;">
                        <p id="resultText"></p>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <script>
        function searchTrains() {
            // 입력된 값을 가져옵니다
            const start = document.getElementById('start').value;
            const end = document.getElementById('end').value;
            const date = document.getElementById('Date').value;
            const time = document.getElementById('listtime').value;
            const personnel = document.getElementById('personnel').value;
            const child = document.getElementById('child').value;
            const old = document.getElementById('old').value;
            const seattype = document.getElementById('seattype').value;
            const trainType = document.querySelector('input[name="flexRadioDefault"]:checked').nextElementSibling.textContent;

            // 예시 JSON 데이터 (실제 API 호출로 대체 가능)
            const response = {
              "response": {
                "header": {
                  "resultCode": "00",
                  "resultMsg": "NORMAL SERVICE."
                },
                "body": {
                  "items": {
                    "item": [
					{
					            "adultcharge": 23700,
					            "arrplacename": "서울",
					            "arrplandtime": 20240723104800,
					            "depplacename": "대전",
					            "depplandtime": 20240723094600,
					            "traingradename": "KTX",
					            "trainno": 14
					          },
					          {
					            "adultcharge": 17200,
					            "arrplacename": "서울",
					            "arrplandtime": 20240723113400,
					            "depplacename": "대전",
					            "depplandtime": 20240723095100,
					            "traingradename": "KTX",
					            "trainno": 122
					          },
					          {
					            "adultcharge": 23700,
					            "arrplacename": "서울",
					            "arrplandtime": 20240723111900,
					            "depplacename": "대전",
					            "depplandtime": 20240723101100,
					            "traingradename": "KTX",
					            "trainno": 104
					          },
					          {
					            "adultcharge": 23700,
					            "arrplacename": "서울",
					            "arrplandtime": 20240723112400,
					            "depplacename": "대전",
					            "depplandtime": 20240723101600,
					            "traingradename": "KTX",
					            "trainno": 16
					          },
					          {
					            "adultcharge": 23700,
					            "arrplacename": "서울",
					            "arrplandtime": 20240723112800,
					            "depplacename": "대전",
					            "depplandtime": 20240723102600,
					            "traingradename": "KTX",
					            "trainno": 18
					          },
					          {
					            "adultcharge": 23700,
					            "arrplacename": "서울",
					            "arrplandtime": 20240723114900,
					            "depplacename": "대전",
					            "depplandtime": 20240723103600,
					            "traingradename": "KTX",
					            "trainno": 20
					          },
					          {
					            "adultcharge": 23700,
					            "arrplacename": "서울",
					            "arrplandtime": 20240723115300,
					            "depplacename": "대전",
					            "depplandtime": 20240723105800,
					            "traingradename": "KTX",
					            "trainno": 22
					          },
					          {
					            "adultcharge": 23700,
					            "arrplacename": "서울",
					            "arrplandtime": 20240723123300,
					            "depplacename": "대전",
					            "depplandtime": 20240723112600,
					            "traingradename": "KTX",
					            "trainno": 24
					          },
					          {
					            "adultcharge": 23700,
					            "arrplacename": "서울",
					            "arrplandtime": 20240723124800,
					            "depplacename": "대전",
					            "depplandtime": 20240723113400,
					            "traingradename": "KTX",
					            "trainno": 238
					          },
					          {
					            "adultcharge": 23700,
					            "arrplacename": "서울",
					            "arrplandtime": 20240723130400,
					            "depplacename": "대전",
					            "depplandtime": 20240723120000,
					            "traingradename": "KTX",
					            "trainno": 26
					          }
                    ]
                  },
                  "numOfRows": 10,
                  "pageNo": 2,
                  "totalCount": 58
                }
              }
            };

            // 결과 텍스트를 만듭니다
            const items = response.response.body.items.item;
            let resultText = `
                <style>
                    .checkTrain {
                        width: 100%;
                        border-collapse: collapse;
                    }
                    .checkTrain th, .checkTrain td {
                        border: 1px solid #ddd;
                        padding: 8px;
                        text-align: center;
                    }
                    .checkTrain th {
                        background-color: #f2f2f2;
                        color: black;
                    }
                    .checkTrain tr:nth-child(even) {
                        background-color: #f9f9f9;
                    }
                    .checkTrain tr:hover {
                        background-color: #ddd;
                    }
                </style>
                <br>
                <table class="checkTrain">
                    <thead>
                        <tr>
                            <th>열차종류</th>
                            <th>열차번호</th>
                            <th>출발역</th>
                            <th>도착역</th>
                            <th>좌석종류</th>
                            <th>출발시간</th>
                            <th>도착시간</th>
                            <th>소요시간</th>
                            <th>요금</th>
                        </tr>
                    </thead>
                    <tbody>
            `;
            
            items.forEach(item => {
                const depDateTime = `${item.depplandtime.toString().slice(0, 4)}-${item.depplandtime.toString().slice(4, 6)}-${item.depplandtime.toString().slice(6, 8)} ${item.depplandtime.toString().slice(8, 10)}:${item.depplandtime.toString().slice(10, 12)}`;
                const arrDateTime = `${item.arrplandtime.toString().slice(0, 4)}-${item.arrplandtime.toString().slice(4, 6)}-${item.arrplandtime.toString().slice(6, 8)} ${item.arrplandtime.toString().slice(8, 10)}:${item.arrplandtime.toString().slice(10, 12)}`;
                const duration = (item.arrplandtime - item.depplandtime) / 60000; // 시간 차를 분 단위로 계산
                resultText += `
                    <tr>
                        <td>${item.traingradename}</td>
                        <td>${item.trainno}</td>
                        <td>${item.depplacename}</td>
                        <td>${item.arrplacename}</td>
                        <td>${seattype}</td>
                        <td>${depDateTime}</td>
                        <td>${arrDateTime}</td>
                        <td>${Math.floor(duration / 60)}시간 ${duration % 60}분</td>
                        <td>${item.adultcharge.toLocaleString()}원</td>
                    </tr>
                `;
            });

            resultText += `
                    </tbody>
                </table>
            `;

            // 결과를 표시합니다
            document.getElementById('resultText').innerHTML = resultText;
            document.getElementById('result').style.display = 'block';
        }

        function hideResult() {
            document.getElementById('result').style.display = 'none';
        }
        
        // 오늘 날짜 이후로만 선택할 수 있도록 설정
        var now_utc = Date.now();
        var timeOff = new Date().getTimezoneOffset() * 60000;
        var today = new Date(now_utc - timeOff).toISOString().split("T")[0];
        document.getElementById("Date").value = today;
        document.getElementById("Date").setAttribute("min", today);
    </script>
</body>
</html>
