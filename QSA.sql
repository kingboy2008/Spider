
 
CREATE TABLE T_DeclareData(
	[ID] [int] IDENTITY(1,1) PRIMARY KEY,
	[CreateTime] [datetime] NULL,
	[Title] [nvarchar](255) NULL,
	[Url] [nvarchar](1000) NULL,
	[PublishDate] [varchar](50) NULL,
	[KeyWord] [nvarchar](255) NULL,
	[WebSite] [nvarchar](50) NULL,
	[CipherText] [varchar](50) NULL,
	[Enabled] [int] NULL,
)

CREATE TABLE T_ContextData(
	[ID] [int] IDENTITY(1,1) PRIMARY KEY,
	[DeclareID] [int] NULL,
	[HtmlContext] [nvarchar](max) NULL,
)


CREATE TABLE T_SpiderConfig(
	[Id] [int] IDENTITY(1,1) PRIMARY KEY,
	[TaskId] [int] NULL,
	[ListUrl] [nvarchar](500) NULL,
	[KeyWords] [nvarchar](255) NULL,
	[PageCount] [int] NULL,
	[ScanLastDay] [int] NULL,
	[ListTag] [varchar](255) NULL,
	[ListTitleTag] [varchar](255) NULL,
	[ListDateTag] [varchar](255) NULL,
	[ListTitleSpliceUrl] [varchar](255) NULL,
	[FirstPageFile] [nvarchar](max) NULL,
	[NextPageFile] [varchar](max) NULL,
	[PageStartInx] [int] NULL,
	[ContextTag] [varchar](255) NULL,
	[ContextTitleTag] [varchar](255) NULL,
	[ContextDetailTag] [varchar](255) NULL,
	[Charset] [varchar](20) NULL,
)

CREATE TABLE T_TaskList(
	[Id] [int] IDENTITY(1,1) PRIMARY KEY,
	[Title] [nvarchar](255) NULL,
	[Type] [int] NULL,
	[RunTime] [varchar](20) NULL,
	[RunDay] [int] NULL,
	[RunMonth] [varchar](100) NULL,
	[RunMonthDay] [int] NULL,
	[RunMonthWeek] [int] NULL,
	[RunWeek] [int] NULL,
	[RunWeekDay] [varchar](100) NULL,
	[StartDate] [date] NULL,
	[EndDate] [date] NULL,
	[Enabled] [int] NULL,
	[Remark] [varchar](255) NULL,
	[IsEndDate] [int] NULL,
)



SET IDENTITY_INSERT [dbo].[T_SpiderConfig] ON 
INSERT [dbo].[T_SpiderConfig] ([Id], [TaskId], [ListUrl], [KeyWords], [PageCount], [ScanLastDay], [ListTag], [ListTitleTag], [ListDateTag], [ListTitleSpliceUrl], [FirstPageFile], [NextPageFile], [PageStartInx], [ContextTag], [ContextTitleTag], [ContextDetailTag], [Charset]) VALUES (1, 1, N'http://www.gxcz.gov.cn/gxzzzzqczt/gzdt/tzgg/', N'申报/项目/公示/办法/验收/征集', 2, 7, N'//ul[@class=''dzjzw_list_main_ul'']//li', N'//a', N'//span[@class=''date'']', N'', N'index.html', N'index_{0}.html', 1, N'//div[@class=''zhengwen'']', N'//h1', N'//div[@id=''zoom'']', N'utf-8')
INSERT [dbo].[T_SpiderConfig] ([Id], [TaskId], [ListUrl], [KeyWords], [PageCount], [ScanLastDay], [ListTag], [ListTitleTag], [ListDateTag], [ListTitleSpliceUrl], [FirstPageFile], [NextPageFile], [PageStartInx], [ContextTag], [ContextTitleTag], [ContextDetailTag], [Charset]) VALUES (2, 2, N'http://www.most.gov.cn/kjjh/xmsb/gggs/', N'申报/项目/公示/办法/验收/征集', 2, 7, N'//*[@id="TRS"]', N'//a', N'', N'', N'', N'', 1, N'/html/body/table[1]', N'//*[@id="Title"]', N'//*[@id="Zoom"]', N'gb2312')
INSERT [dbo].[T_SpiderConfig] ([Id], [TaskId], [ListUrl], [KeyWords], [PageCount], [ScanLastDay], [ListTag], [ListTitleTag], [ListDateTag], [ListTitleSpliceUrl], [FirstPageFile], [NextPageFile], [PageStartInx], [ContextTag], [ContextTitleTag], [ContextDetailTag], [Charset]) VALUES (3, 3, N'http://www.gxst.gov.cn/gxkjt/CateogryPaging/001003/', N'申报/项目/公示/办法/验收/征集', 2, 7, N'//li[@class=''list-li'']', N'//a', N'//span[@class=''li-date'']', N'http://www.gxst.gov.cn', N'Default_1.htm', N'Default_{0}.htm', 1, N'//div[@class=''post-box'']', N'//h2', N'//div[@id=''TDContent'']', N'utf-8')
INSERT [dbo].[T_SpiderConfig] ([Id], [TaskId], [ListUrl], [KeyWords], [PageCount], [ScanLastDay], [ListTag], [ListTitleTag], [ListDateTag], [ListTitleSpliceUrl], [FirstPageFile], [NextPageFile], [PageStartInx], [ContextTag], [ContextTitleTag], [ContextDetailTag], [Charset]) VALUES (4, 4, N'http://www.nnst.gov.cn/tzgg/tz/xmtz/', N'申报/项目/公示/办法/验收/征集', 2, 7, N'//*[@id="common_list_box"]/div[2]/div/div[2]/div/div[2]', N'//a', N'//span', N'', N'index_1.html', N'index_{0}.html', 1, N'//*[@class="articalContent"]', N'//h1', N'//*[@class="TRS_Editor"]', N'utf-8')
INSERT [dbo].[T_SpiderConfig] ([Id], [TaskId], [ListUrl], [KeyWords], [PageCount], [ScanLastDay], [ListTag], [ListTitleTag], [ListDateTag], [ListTitleSpliceUrl], [FirstPageFile], [NextPageFile], [PageStartInx], [ContextTag], [ContextTitleTag], [ContextDetailTag], [Charset]) VALUES (5, 5, N'http://www.qingxiu.gov.cn/kjj/channels/1989.html', N'申报/项目/公示/办法/验收/征集', 2, 14, N'//ul/li', N'//a', N'//*[@class="time"]', N'http://www.qingxiu.gov.cn', N'cmd$ajax$http://www.qingxiu.gov.cn/SiteFiles/Inner/dynamic/output.aspx?publishmentSystemID=1970&$post$application/x-www-form-urlencoded$pageNodeID=1989&pageContentID=0&pageTemplateType=ChannelTemplate&isPageRefresh=False&pageUrl=da0add0ppHLhjwqc3APQs5MxmhmlR2V0add0HwMO49bawL10GL34wM2xHaiDEH1ZrVhasn3WLtFnQ7ARqZ00equals0&ajaxDivID=ajaxElement_2&templateContent=tWt8tkW0oFBN3N0add0bGnX0slash0RAFJmImxDdCsEnzulUq6UmwjBmpi54y0slash0f1Jl1Jt9b0ZGZOPltAbiGNT6I2H3mOOBh9CnzwkLPfusVbkp4iWlH1VYtENz46sw6vlsRfxx80slash0y0add0P0add04haGLgc3pMYQb7OmW0add0hauK78Ym1hBRBhejya1VHlZnLpXzle9K0add0qvotvT3imJQhhpRIm33AKjCaMyVxBqewK1ghIjl8XEyX3K70add0wn9XUQ5gCpLUNNuzD8vBaOO6ugxVG0AW60Qlv0ww8jYiW97nf0add058WKDDUX8api0slash0ye1RT5fAvzmiEQaC4R8Nv3YID4Qe1s8XqY47c27jZOB6H8SiRF7RqME5aTWdsmTu0Qkzx0IA2AwrvZaCMbgl0slash0jX0add0LMSx0slash0xgjC3BRS37qrVlNk80slash088cFZ0add0onMNdjKRAmG80slash0BqUQrPFddzkziTyZIkydtA0bULePobM9zmbxdP0slash0VQ3Dpe0slash06kU7wjspJgS8ab2jm10slash0KFIpgEFCO9HLsS2G6KnK95z0add0Cbo835J8cb8whp7fZRm3kPgkLJT5loZ2PvlDrUAXtpkkBscKYbUgozsTXRrtwwfVeIcic9Vb47Ush8ZfOIlnZgwSjCgOHK1RFZnjFKkrV03feOSE730slash0TEVA1vxqJTG0vDay2joWbA7liGjT0YN4jhESwuQ1c3Jvuwjg9n0add0Wc90C9J40slash0V0IcbN8GcODfsnFZiW0add0MF0add0GAn7wYRG0add0LC78zrMbF71AW7gpw90slash0dxeQN1kUQv0VVpjW0add0Kap8ojtzZiAp9unX0slash0wF0add063j3vxq9zl1zu3u0add0JHOJnoAhJgNqxJzabofsZytFcQh0slash0EzwfTEyw9mMNkem8TleGitTRsnp6xVbEe7N6V0add07aqRg8Khbo2JOEynzDnlQv0bHQGQsIHZ2EDxwAkvfY6VUILEdS0add0rQxs1VeU70eNGglDA4K0slash0Xr9cHHbYfmSeYiDkM9ERo77MyhjBSP7SYZO6Jt2YwZ9s9OxdNIJa4LQ08Tb0slash03TXjuHEgiNdjnFivaNXu9Rk4r3GnBlicE9bNh0xf9c3ZJEFJ6yL0slash0UKpGeJasRg7kYLvQvq8YTZ0tw8LFVzwmiPL8aUuyghrrX6SOd8GDJ0add0t8YyMTm5z8VGkTOOt0add0CY9e5Q8ByGKBD6NbXjjjD0slash00slash0bq0add00pIpjdHR9wWRdLfZxXg0slash04mZGaOccMO6dWwCGk5lkoWuZHAr6WSiNyCQwzZ8fvE8V0slash0SOW8DwQYX3WsRU1F3JTgztmBcx9dul6DfomxNMqgYlqQB0add0PrhTyS5cuhQcDoOmTxJCP3Tqlnb9uKqRyf3qaFuM4WDAyE1oqiunQ85vT0slash0pIJ7gDACrnkHa0slash0H0slash0Wdtqo2ZtmuSxO7FfnTpDZ3VTqddS4YqjhdiAD2dZmaPIEs9ubQozNRLdoviwMboMWkEh9z4cT5ilP3xKD0add08LeBSd5tCsxcEEt6RsiwgVS0slash0HL37zILyIK2HakSfo4ZxF2RhrY0slash0KST8JUDqCdgMxiX6jcDx0slash0UhpQbaV0add0Ufe0slash0xbI8agJ7eT3RRJQeTSodR0add0K18zFfmwqHni1Ktd1hqKDpgAGdrfWfkbw7hhTpeXXsA4ZS0hVvXQ5RWffyCrmaPYflWgD0LEAM50sLjVyWkTosXnXIfk0add0mMPBUsZZ0add0AdPEBOMxMnBSV80add0u0add0v632KMTg9hZ3c0add0Iy57GNC66rGtAUul81FZ0add0Uzx4kW0WN0slash04CChKXVBWj8OGa1C9aU2LQqEG80slash0o9FndVfd0slash03bVY0U03swyJgpQN6hrWy0add01yD7qYWgADLdHcCfl7l0add0eOydrldWf3uA6hkorn5KKXoaFKFRO4Qxm0Hy10jJwG401pjJNE30QZnTQTYOQA0add00add0J4Mlp0slash05hk70slash0AZ2MMnFvmtHqaYgbQ898p6dFRQxwAv4d7rCNWpAmn0slash07PyUqjou7B70add0qQOVHxpIKf4jK3ryMT7Fd4u6sQu7kz6KPDv5kWun0q1b7LW7j65fHYmHT4JN0add0hCgyZo8V43Q2zgBZJfiw59K8pD4qoTlb0add0gi69YPvRM0bHsiKLCh2VBqEAFea02OxBVMIHD0add0jAACsgQJnb0qOik0equals0&pageNum={0}', N'', 1, N'//*[@id="content_mainleft"]', N'//*[@id="content_mainleft"]/div[1]', N'//*[@id="content_mainleft"]/div[3]', N'utf-8')
SET IDENTITY_INSERT [dbo].[T_SpiderConfig] OFF

SET IDENTITY_INSERT [dbo].[T_TaskList] ON 
INSERT [dbo].[T_TaskList] ([Id], [Title], [Type], [RunTime], [RunDay], [RunMonth], [RunMonthDay], [RunMonthWeek], [RunWeek], [RunWeekDay], [StartDate], [EndDate], [Enabled], [Remark], [IsEndDate]) VALUES (1, N'广西财政网', 2, N'09:15:00', 1, N'1,1,1,1,1,1,1,1,1,1,1,1', 1, -1, 1, N'1,0,0,0,0,0,0', CAST(0x1B3E0B00 AS Date), CAST(0x1B3E0B00 AS Date), 1, N'通知公告', 0)
INSERT [dbo].[T_TaskList] ([Id], [Title], [Type], [RunTime], [RunDay], [RunMonth], [RunMonthDay], [RunMonthWeek], [RunWeek], [RunWeekDay], [StartDate], [EndDate], [Enabled], [Remark], [IsEndDate]) VALUES (2, N'中华人民共和国科学技术部', 2, N'09:15:00', 1, N'1,1,1,1,1,1,1,1,1,1,1,1', 1, -1, 1, N'1,0,0,0,0,0,0', CAST(0x1C3E0B00 AS Date), CAST(0x1C3E0B00 AS Date), 1, N'申报征集', 0)
INSERT [dbo].[T_TaskList] ([Id], [Title], [Type], [RunTime], [RunDay], [RunMonth], [RunMonthDay], [RunMonthWeek], [RunWeek], [RunWeekDay], [StartDate], [EndDate], [Enabled], [Remark], [IsEndDate]) VALUES (3, N'广西科学技术厅', 2, N'09:15:00', 1, N'1,1,1,1,1,1,1,1,1,1,1,1', 1, -1, 1, N'1,0,0,0,0,0,0', CAST(0x1E3E0B00 AS Date), CAST(0x1E3E0B00 AS Date), 1, N'通知通告', 0)
INSERT [dbo].[T_TaskList] ([Id], [Title], [Type], [RunTime], [RunDay], [RunMonth], [RunMonthDay], [RunMonthWeek], [RunWeek], [RunWeekDay], [StartDate], [EndDate], [Enabled], [Remark], [IsEndDate]) VALUES (4, N'南宁市科技局', 2, N'09:15:00', 1, N'1,1,1,1,1,1,1,1,1,1,1,1', 1, -1, 1, N'1,0,0,0,0,0,0', CAST(0x1E3E0B00 AS Date), CAST(0x1E3E0B00 AS Date), 1, N'项目通知', 0)
INSERT [dbo].[T_TaskList] ([Id], [Title], [Type], [RunTime], [RunDay], [RunMonth], [RunMonthDay], [RunMonthWeek], [RunWeek], [RunWeekDay], [StartDate], [EndDate], [Enabled], [Remark], [IsEndDate]) VALUES (5, N'青秀区科技局', 2, N'09:15:00', 1, N'1,1,1,1,1,1,1,1,1,1,1,1', 1, -1, 1, N'1,0,0,0,0,0,0', CAST(0x1E3E0B00 AS Date), CAST(0x1E3E0B00 AS Date), 1, N'工作动态，
第一页的文件名，这里使用了命令行，约定：cmd$ajax$地址$请求方式:get/post$contentType$参数', 0)
SET IDENTITY_INSERT [dbo].[T_TaskList] OFF

ALTER TABLE [dbo].[T_TaskList] ADD  DEFAULT ((0)) FOR [IsEndDate]

