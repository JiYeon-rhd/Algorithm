-- 코드를 입력하세요
-- 조회수 가장 높은 중고거래의 첨부파일 경로
-- 파일 아이디 내림차준
-- 파일 확장자: 기본 + 보드 아이디 + 파일 아이디 + 파일 이름+파일 확장자 
SELECT concat('/home/grep/src/',BOARD_ID,'/',FILE_ID,FILE_NAME,FILE_EXT) as FILE_PATH
FROM USED_GOODS_FILE
WHERE BOARD_ID in (
    SELECT BOARD_ID
    FROM USED_GOODS_BOARD
    WHERE VIEWS = (SELECT max(VIEWS) FROM USED_GOODS_BOARD)
    )
ORDER BY FILE_ID DESC