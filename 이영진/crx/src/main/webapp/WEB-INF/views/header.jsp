<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
    String schoolVO = (String) session.getAttribute("schoolVO");
%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <style>
        .headernav {
            display: flex;
            align-items: center;
            justify-content: space-between;
            width: 100%;
			justify-content: center;
        }

        .headernav img {
            margin: 0 20px;
			padding:0;
            height: auto;
            width: 200px;
        }

        .headernav > ul {
            display: flex;
            align-items: flex-end;
            justify-content: space-between;
            padding: 0;
            margin-left: 15%;
            margin-right: 15%;
        }

        .headernav li {
            list-style: none;            
            position: relative;
            text-align: center;
			margin-top: 10px;
			margin-bottom:10px;
        }

        .mainmenu {
            text-decoration: none;
            color: black;
        }

		.mainmenu:hover,
		.mainmenu.active {
		    color: green; /* 글씨 색상 변경 */
		}
        .mainmenu:hover::after {
            content: '';
            display: block;
            width: 100%;
            height: 3px;
            background-color: green;
            position: absolute;
            bottom: 0;
            left: 0;
        }

        .mainmenu.active {
            color: green; /* 활성화 시 색상 변경 */
        }

        .mainmenu.active::after {
            content: '';
            display: block;
            width: 100%;
            height: 3px;
            background-color: green; /* 밑줄 색상 */
            position: absolute;
            bottom: 0;
            left: 0;
        }

        .dropdown {
            position: absolute;
            top: 100%;
			width: 100%;
            left: 0;
            display: none;
            width: 200px;
            z-index: 10;
            margin: 0;
			height:auto;
			border-bottom:1px dotted gray;
			background-color:white;			
        }

        .headernav:hover > ul > li .dropdown {
            display: block;
        }

        .logo-dropdown {
            position: absolute;
            top: 160px;
            left: 50%;
            transform: translateX(-50%);
            display: none;
        }
		.logo{
			width:100%;
		}

        .headernav img:hover + .logo-dropdown {
            display: block;
        }

        .dropdown div, .logo-dropdown {            
            background-color: white;
        }

        .dropdown ul, .logo-dropdown ul {
            list-style: none;
            padding: 0;
            margin: 0;
        }

        .submenu {
            display: block;
            text-align: left;
        }

        .submenu a {
			font-size:14px;
			font-family: monospace;
            text-decoration: none;
            color: black;
        }
		.submenu a:hover {
		    color: green; /* 서브메뉴 호버 시 글씨 색상 변경 */
		}
        .menulist {			
            width: 200px;
        }
		.sub{
			width:400px;
		}		
		.dot{
			border-bottom: 1px dotted gray;	
		}
    </style>
</head>
<jsp:include page="header-mini.jsp" />
<nav class="headernav">
    <ul>
		<li class="menulist menulist2"><a href="" class="mainmenu"><h2></h2></a>
		    <div class="dropdown mega-menu">
		        <div>
		            <ul>
		                <li><br></li>
						<li><br></li>
						<li><br></li>
						<li><br></li>
						<li><br></li>
						<li><br></li>
		            </ul>
		        </div>
		    </div>
		</li>	
		<li class="menulist menulist2"><a href="" class="mainmenu"><h2></h2></a>
		    <div class="dropdown mega-menu">
		        <div>
		            <ul>
		                <li><br></li>
						<li><br></li>
						<li><br></li>
						<li><br></li>
						<li><br></li>
						<li><br></li>
		            </ul>
		        </div>
		    </div>
		</li>	
		<li class="menulist menulist2"><a href="" class="mainmenu"><h2></h2></a>
		    <div class="dropdown mega-menu">
		        <div>
		            <ul>
		                <li><br></li>
						<li><br></li>
						<li><br></li>
						<li><br></li>
						<li><br></li>
						<li><br></li>
		            </ul>
		        </div>
		    </div>
		</li>	
        <li class="menulist"><a href="" class="mainmenu"><h2>승차권</h2></a>
            <div class="dropdown mega-menu">
                <div>
                    <ul class="submenu">
                        <li><a href="">승차권 예매</a></li>
                        <li><a href="">발권/취소/변경</a></li>
                        <li><a href="">결제</a></li>
						<li><br></li>
						<li><br></li>
						<li><br></li>
                    </ul>
                </div>
            </div>
        </li>
        <li class="menulist"><a href="" class="mainmenu"><h2>고객안내</h2></a>
            <div class="dropdown mega-menu">
                <div>
                    <ul class="submenu">
                        <li><a href="">공지사항</a></li>
                        <li><a href="">FAQ</a></li>
                        <li><a href="">고객센터</a></li>
                        <li><a href="">유실물 안내</a></li>
                        <li><a href="">안내사항</a></li>
                        <li><a href="">1:1문의</a></li>
                    </ul>
                </div>
            </div>
        </li>
        <li><a href=""><img src="../img/logo.PNG" alt="Logo"></a>
            <div class="dropdown mega-menu logo">
                <div>
                    <ul>                       
						<li><br></li>
						<li><br></li>
						<li><br></li>
						<li><br></li>
						<li><br></li>
						<li><br></li>
                    </ul>
                </div>
            </div>
        </li>
        <li class="menulist"><a href="" class="mainmenu"><h2>이용안내</h2></a>
            <div class="dropdown mega-menu">
                <div>
                    <ul class="submenu">
                        <li><a href="">종합이용안내</a></li>
                        <li><a href="">승차권 이용안내</a></li>
                        <li><a href="">정차역 이용안내</a></li>
                        <li><a href="">지연배상 신청</a></li>
						<li><br></li>
						<li><br></li>
                    </ul>
                </div>
            </div>
        </li>
        <li class="menulist"><a href="" class="mainmenu"><h2>여행상품</h2></a>
            <div class="dropdown mega-menu">
                <div>
                    <ul class="submenu">
                        <li><a href="">지역별 여행상품</a></li>
                        <li><a href="">관광 열차</a></li>
						<li><br></li>
						<li><br></li>
						<li><br></li>
						<li><br></li>					
                    </ul>
                </div>
            </div>
        </li>
		<li class="menulist menulist2"><a href="" class="mainmenu"><h2></h2></a>
		    <div class="dropdown mega-menu">
		        <div>
		            <ul>
		                <li><br></li>
		                <li><br></li>
		                <li><br></li>
						<li><br></li>
						<li><br></li>
						<li><br></li>
		            </ul>
		        </div>
		    </div>
		</li>
		<li class="menulist menulist2"><a href="" class="mainmenu"><h2></h2></a>
		    <div class="dropdown mega-menu">
		        <div>
		            <ul>
		                <li><br></li>
						<li><br></li>
						<li><br></li>
						<li><br></li>
						<li><br></li>
						<li><br></li>
		            </ul>
		        </div>
		    </div>
		</li>	
		<li class="menulist menulist2"><a href="" class="mainmenu"><h2></h2></a>
		    <div class="dropdown mega-menu">
		        <div>
		            <ul>
		                <li><br></li>
						<li><br></li>
						<li><br></li>
						<li><br></li>
						<li><br></li>
						<li><br></li>
		            </ul>
		        </div>
		    </div>
		</li>	
    </ul>
</nav>
<div class="dot">
</div>
<br>
<script>
    document.querySelectorAll('.submenu li').forEach(submenuItem => {
        submenuItem.addEventListener('mouseover', function() {
            const parentLi = submenuItem.closest('li.menulist');
            const mainMenuItem = parentLi.querySelector('.mainmenu');
            mainMenuItem.classList.add('active');
        });
        
        submenuItem.addEventListener('mouseout', function() {
            const parentLi = submenuItem.closest('li.menulist');
            const mainMenuItem = parentLi.querySelector('.mainmenu');
            mainMenuItem.classList.remove('active');
        });
    });
</script>
</body>
</html>
