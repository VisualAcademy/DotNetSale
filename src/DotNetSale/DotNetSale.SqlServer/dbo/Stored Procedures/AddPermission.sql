------------------------------------------------------------------------------------------------------
--[!] 저장 프로시저(Stored Procedure) 설계 - 게시판 관련 - 각 게시판에 사용자 또는 그룹에 대한 권한 추가 

-- 작성자: 박용준(https://dul.me/about) 
-- 타이틀: Membership Portal - 게시판 생성 - 각 게시판에 사용자 또는 그룹에 대한 권한 추가 
-- 코멘트: Membership Portal - 게시판 생성 - 각 게시판에 사용자 또는 그룹에 대한 권한 추가 
-- 수정일: 2018-09-05: 코드 확인 
-- 동영상: https://youtu.be/8IlUp7u6xfA
------------------------------------------------------------------------------------------------------

--[!] 권한 입력 저장 프로시저
Create Proc dbo.AddPermission
    @TID Int, 
    @UID Int, 
    @NoAccess Bit, 
    @List Bit, 
    @ReadArticle Bit, 
    @Download Bit, 
    @Write Bit, 
    @Upload Bit, 
    @Extra Bit, 
    @Admin Bit,
    @Comment Bit,
	@Menu Bit = 1
As
    Insert Into Permission (
		TID, UID, NoAccess, List, ReadArticle, Download, Write, Upload, Extra, Admin, Comment, Menu 
	) 
    Values (
		@TID, @UID, @NoAccess, @List, @ReadArticle, @Download, @Write, @Upload, @Extra, @Admin, @Comment, @Menu 
	)	
Go
