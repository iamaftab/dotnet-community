SELECT Forums.QuestionId, Forums.Question, Login.Name As "Posted By" From Forums Join Login on Forums.LoginId = Login.LoginId;

Select Forums.Question, Forum_Reply.Reply, Login.Name AS "Posted By"
From Forums
	Inner Join Forum_Reply On Forums.QuestionId = Forum_Reply.QuestionId
	Inner Join Login On Forum_Reply.LoginId= Login.LoginId;

Select F.Question, FR.Reply, L.Name AS "Posted By"
From Forums F
	Inner Join Forum_Reply FR On F.QuestionId = FR.QuestionId
	Inner Join Login L On FR.LoginId= L.LoginId;

Select A.ArticleType, A.ArticleDesc, A.CDate AS "Posted Date", L.Name AS "Posted By" From Article A
	Inner Join Login L On A.LoginId= L.LoginId;
