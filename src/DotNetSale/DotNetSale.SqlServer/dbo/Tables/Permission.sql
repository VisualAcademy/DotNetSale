------------------------------------------------------------------------------------------------------
--[!] 테이블(Table) 설계 - 게시판(TID)별 권한 설정

-- 작성자: 박용준(https://dul.me/about) 
-- 타이틀: 닷넷코리아 - 게시판 권한 설정 
-- 코멘트: 닷넷코리아 - 게시판 권한 설정 
-- 작성일: 2017-12-08
-- 수정일: 2018-01-13: 메뉴 표시 기능 추가 
-- 동영상: https://youtu.be/li_6GzjjAfs
------------------------------------------------------------------------------------------------------

--[5] 사용자(또는 그룹/역할)에 대한 게시판 권한(퍼미션;Permission) 설정
CREATE TABLE [dbo].[Permission] 
(
    [TID]			[Int],						-- 테이블 일련번호
    [UID]			[Int],						-- 사용자(또는 그룹/역할) 일련번호
    [NoAccess]		[Bit] Default(0),			-- 접근거부
    [List]			[Bit] Default(1),			-- 리스트 보기
    [ReadArticle]	[Bit] Default(1),			-- 상세 보기
    [Download]		[Bit] Default(1),			-- 파일 다운로드
    [Write]			[Bit] Default(1),			-- 글쓰기
    [Upload]		[Bit] Default(1),			-- 업로드 
    [Extra]			[Bit] Default(0),			-- 관리
    [Admin]			[Bit] Default(0),			-- 모든권한
    [Comment]		[Bit] Default(1),			-- 댓글(댓글)
    [Menu]			[Bit] Default(1),			-- 메뉴 표시 

    Primary Key(TID, UID)
)
GO
