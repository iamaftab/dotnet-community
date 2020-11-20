Create Database "communityDB";

Create Table Login(LoginId int primary key, Name nvarchar(50) not null,
				Username nvarchar(50) not null, Password nvarchar(30) not null,
				Sec_Question nvarchar(MAX) not null, Answer nvarchar(MAX) not null,
				Status nvarchar(20) not null);

Create Table Article(ArticleId int primary key, ArticleType nvarchar(50) not null,
				ArticleDesc nvarchar(MAX) not null, CDate date not null,
				LoginId int foreign key references Login(LoginId));

Create Table Project(ProjectId int primary key, ProjectType nvarchar(50) not null,
				FileName nvarchar(MAX) not null, FileType nvarchar(20) not null,
				LoginId int foreign key references Login(LoginId));

Create Table Forums(QuestionId int primary key, Question nvarchar(MAX) not null,
				LoginId int foreign key references Login(LoginId));

Create Table Forum_Replay(ReplyId int primary key, Reply nvarchar(MAX) not null,
				QuestionId int foreign key references Forums(QuestionId),
				LoginId int foreign key references Login(LoginId));