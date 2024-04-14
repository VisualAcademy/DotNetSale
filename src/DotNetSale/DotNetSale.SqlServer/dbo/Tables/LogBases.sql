-- 로그 정보 기록
CREATE TABLE [dbo].[LogBases]
(
    [Id] INT Identity(1, 1) NOT NULL PRIMARY KEY,               -- 일련번호
    Message NVarChar(Max) Not Null,                             -- 로그 메시지
    Timestamp DateTimeOffset(7) 
        Default(GetDate() AT TIME ZONE 'Korea Standard Time')   -- 시간
)
Go
