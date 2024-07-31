-- 프로시저 작성
DELIMITER //

CREATE PROCEDURE InsertMembers()
BEGIN
    DECLARE i INT DEFAULT 1;
    DECLARE randGender VARCHAR(10);
    DECLARE randLevel VARCHAR(20);
    DECLARE randDivno VARCHAR(10);
    DECLARE randTel VARCHAR(50);
    DECLARE randDate DATE;
    DECLARE randAge INT;
    DECLARE randName VARCHAR(50);
    DECLARE randMail VARCHAR(100);
    
    -- 한글 이름 목록
    DECLARE names_cursor CURSOR FOR
    SELECT name FROM (
        SELECT '김지민' AS name UNION ALL
        SELECT '이수빈' UNION ALL
        SELECT '박지훈' UNION ALL
        SELECT '최유리' UNION ALL
        SELECT '강민석' UNION ALL
        SELECT '정하늘' UNION ALL
        SELECT '조한별' UNION ALL
        SELECT '서연수' UNION ALL
        SELECT '임준호' UNION ALL
        SELECT '하윤서' UNION ALL
        SELECT '유진호' UNION ALL
        SELECT '장예린' UNION ALL
        SELECT '노경민' UNION ALL
        SELECT '송은지' UNION ALL
        SELECT '문태현' UNION ALL
        SELECT '오하나' UNION ALL
        SELECT '배다빈' UNION ALL
        SELECT '신경호' UNION ALL
        SELECT '최지은' UNION ALL
        SELECT '이서준' UNION ALL
        SELECT '박하은' UNION ALL
        SELECT '김성민' UNION ALL
        SELECT '전지윤' UNION ALL
        SELECT '채우석' UNION ALL
        SELECT '강하영' UNION ALL
        SELECT '허준' UNION ALL
        SELECT '윤수정' UNION ALL
        SELECT '오민석' UNION ALL
        SELECT '양서연' UNION ALL
        SELECT '하성준' UNION ALL
        SELECT '문정훈' UNION ALL
        SELECT '조윤아' UNION ALL
        SELECT '안지현' UNION ALL
        SELECT '백지현' UNION ALL
        SELECT '심영호' UNION ALL
        SELECT '신주희' UNION ALL
        SELECT '장준서' UNION ALL
        SELECT '권민재' UNION ALL
        SELECT '송하늘' UNION ALL
        SELECT '민세영' UNION ALL
        SELECT '이재훈' UNION ALL
        SELECT '정미래' UNION ALL
        SELECT '서현수' UNION ALL
        SELECT '강소연' UNION ALL
        SELECT '오진수' UNION ALL
        SELECT '정태진' UNION ALL
        SELECT '임서윤' UNION ALL
        SELECT '박현우' UNION ALL
        SELECT '김주원' UNION ALL
        SELECT '이진영' UNION ALL
        SELECT '하서연' UNION ALL
        SELECT '조민석' UNION ALL
        SELECT '신유진' UNION ALL
        SELECT '양은수' UNION ALL
        SELECT '문서우' UNION ALL
        SELECT '이수연' UNION ALL
        SELECT '최지훈' UNION ALL
        SELECT '전민서' UNION ALL
        SELECT '배수정' UNION ALL
        SELECT '강다은' UNION ALL
        SELECT '장우진' UNION ALL
        SELECT '노성훈' UNION ALL
        SELECT '서지훈' UNION ALL
        SELECT '조하늘' UNION ALL
        SELECT '임태훈' UNION ALL
        SELECT '신하연' UNION ALL
        SELECT '윤시현' UNION ALL
        SELECT '권도윤' UNION ALL
        SELECT '김은지' UNION ALL
        SELECT '오유진' UNION ALL
        SELECT '하경민' UNION ALL
        SELECT '채수빈' UNION ALL
        SELECT '송다연' UNION ALL
        SELECT '정윤서' UNION ALL
        SELECT '최성진' UNION ALL
        SELECT '이예진' UNION ALL
        SELECT '이유리' UNION ALL
        SELECT '박다은' UNION ALL
        SELECT '김승현' UNION ALL
        SELECT '권태우' UNION ALL
        SELECT '오하연' UNION ALL
        SELECT '이수호' UNION ALL
        SELECT '하나래' UNION ALL
        SELECT '정하나' UNION ALL
        SELECT '송현주' UNION ALL
        SELECT '박성호' UNION ALL
        SELECT '문정수' UNION ALL
        SELECT '윤하늘' UNION ALL
        SELECT '서민정' UNION ALL
        SELECT '김민규' UNION ALL
        SELECT '이선영' UNION ALL
        SELECT '장예진' UNION ALL
        SELECT '양서진' UNION ALL
        SELECT '오민재' UNION ALL
        SELECT '최현진' UNION ALL
        SELECT '박서연' UNION ALL
        SELECT '서준희' UNION ALL
        SELECT '이정호' UNION ALL
        SELECT '김세영' UNION ALL
        SELECT '하윤호' UNION ALL
        SELECT '정다연' UNION ALL
        SELECT '조하진' UNION ALL
        SELECT '임지훈' UNION ALL
        SELECT '유민정' UNION ALL
        SELECT '서지연' UNION ALL
        SELECT '문서빈' UNION ALL
        SELECT '채하진' UNION ALL
        SELECT '강민주' UNION ALL
        SELECT '정수빈' UNION ALL
        SELECT '이현수' UNION ALL
        SELECT '하민석' UNION ALL
        SELECT '박민서' UNION ALL
        SELECT '이승현' UNION ALL
        SELECT '권도연' UNION ALL
        SELECT '김은지' UNION ALL
        SELECT '오유진' UNION ALL
        SELECT '하경민'
    ) AS names;
    
    OPEN names_cursor;
    WHILE i <= 100 DO
        FETCH names_cursor INTO randName;
        
        SET randGender = IF(RAND() < 0.5, '남성', '여성');
        SET randLevel = IF(i <= 12, 'admin', 'member');
        SET randDivno = CONCAT('CRX', LPAD(FLOOR(RAND() * 4) + 1, 2, '0'));
        SET randTel = CONCAT('010-', LPAD(FLOOR(RAND() * 10000), 4, '0'), '-', LPAD(FLOOR(RAND() * 10000), 4, '0'));
        SET randDate = DATE_ADD('2010-01-01', INTERVAL FLOOR(RAND() * 5379) DAY);
        SET randAge = FLOOR(RAND() * 36) + 25;
        SET randMail = CONCAT('crx', LPAD(i, 4, '0'), '@crx.com');
        
        INSERT INTO member (
            memid, mempwd, memname, memmail, memtel, memdate, memgender, 
            memage, memgrade, memlevel, memadd, userid, divno
        ) VALUES (
            10000 + i, 10000 + i, randName, randMail, randTel, randDate, randGender, 
            randAge, '사원', randLevel, CONCAT('대전광역시 서구 둔산대로 ', LPAD(i, 3, '0')), 
            10000 + i, randDivno
        );

        SET i = i + 1;
    END WHILE;

    CLOSE names_cursor;
END //

DELIMITER ;

# 프로시저 호출
CALL InsertMembers();

# 프로시저 삭제
DROP PROCEDURE IF EXISTS InsertMembers;