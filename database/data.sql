USE [PaperDb]
GO
/****** Object:  Table [dbo].[Article]    Script Date: 2017/12/9 14:23:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Article](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](80) NOT NULL,
	[Author] [nvarchar](50) NOT NULL,
	[UpateTime] [datetime] NOT NULL,
	[Summary] [nvarchar](max) NOT NULL,
	[Link] [nvarchar](max) NOT NULL,
	[Journal] [nvarchar](max) NULL,
 CONSTRAINT [PK_Article] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Category]    Script Date: 2017/12/9 14:23:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Category](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](100) NOT NULL,
 CONSTRAINT [PK_Category] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[KeyWordConnection]    Script Date: 2017/12/9 14:23:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KeyWordConnection](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[ArticleId] [int] NOT NULL,
	[KeyWordId] [int] NOT NULL,
 CONSTRAINT [PK_KeyWordConnection] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[KeyWords]    Script Date: 2017/12/9 14:23:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KeyWords](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](30) NOT NULL,
 CONSTRAINT [PK_KeyWords] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Option]    Script Date: 2017/12/9 14:23:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Option](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](100) NOT NULL,
	[CategoryId] [int] NOT NULL,
 CONSTRAINT [PK_Option] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[TypeConnection]    Script Date: 2017/12/9 14:23:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TypeConnection](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[ArticleId] [int] NOT NULL,
	[OptionId] [int] NOT NULL,
 CONSTRAINT [PK_TypeConnection] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET IDENTITY_INSERT [dbo].[Article] ON 

INSERT [dbo].[Article] ([id], [Title], [Author], [UpateTime], [Summary], [Link], [Journal]) VALUES (24, N'广西红树林湿地资源非使用价值评估', N'伍淑婕', CAST(0x0000A6EE00000000 AS DateTime), N'采用条件价值法,通过支付意愿调查,对广西红树林湿地的非使用价值进行了评估。结果表明,广西红树林的非使用价值为37.61亿元,其中存在价值16.66亿元;遗产价值10.94亿元;选择价值10.00亿元。广西红树林人均支付意愿值为50元,总支付意愿率为59.2%;除年龄与支付意愿无关外,性别、职业、文化程度、技术职称、收入水平、了解程度、偏爱程度等都与支付意愿呈极显著相关关系;性别与WTP值相关,但不显著,而其他因素与WTP值呈现极显著相关。', N'http://kns.cnki.net/kns/brief/default_result.aspx', N'未知期刊')
INSERT [dbo].[Article] ([id], [Title], [Author], [UpateTime], [Summary], [Link], [Journal]) VALUES (27, N'广东省红树林生态系统服务价值评估', N'曲林静', CAST(0x0000A6EE00000000 AS DateTime), N'红树林生态系统作为全球重要的生态系统,将其服务功能价值进行科学的量化评估,能为其规划开发提供可靠的科学依据,保证资源的有效利用。在阐述分析红树林生态系统的多种生态服务功能的基础上,介绍生态服务功能的价值评估方法,分析各种功能类型评估方法的适用性,并以广东省红树林生态系统为例,对其服务功能价值进行评估。', N'http://kns.cnki.net/KCMS/detail/detail.aspx?dbcode=CJFQ&dbname=CJFD2012&filename=HTXX201203007&uid=WEEvREcwSlJHSldRa1Fhb09jMjVzQmVWdTJIVGhMYnEwQ2VUMHpPWlg0cz0=$9A4hF_YAuvQ5obgVAqNKPCYcEjKensW4ggI8Fm4gTkoUKaID8j8gFw!!&v=MTA3ODVMMmVadWR2RnlIaFY3M05MVG5UZHJHNEg5UE1ySTlGWTRSOGVYMUx1eFlTN0RoMVQzcVRyV00xRnJDVVI=', N'未知期刊')
INSERT [dbo].[Article] ([id], [Title], [Author], [UpateTime], [Summary], [Link], [Journal]) VALUES (28, N'海岸带地区环境资源经济价值的评估方法及实证分析', N'王喜刚', CAST(0x0000A6EE00000000 AS DateTime), N'以大连市金石滩国家海洋公园为例,利用条件价值法,通过建立双边界二分式Logit模型,分别计算了居民和游客对改善和保护海岸带三种最重要环境资源(海水、沙滩、生物种群)的平均意愿支付,进而评估了金石滩国家海洋公园海岸带游憩资源的经济价值。结果显示:金石滩国家海洋公园的海水、沙滩和生物种群的经济价值分别为4.30亿元、3.92亿元和3.57亿元。最后指出:将这些信息纳入海岸带地区的综合管理成本效益分析,对于实现海岸带资源的可持续发展有重要意义。', N'http://kns.cnki.net/KCMS/detail/detail.aspx?dbcode=CJFQ&dbname=CJFD2013&filename=JSJI201309016&uid=WEEvREcwSlJHSldRa1Fhb09jMjVzQmVWdTJIVGhMYnEwQ2VUMHpPWlg0cz0=$9A4hF_YAuvQ5obgVAqNKPCYcEjKensW4ggI8Fm4gTkoUKaID8j8gFw!!&v=MjgwMDdlWnVkdkZ5RGtVN3ZBTHo3Qlo3RzRIOUxNcG85RVlvUjhlWDFMdXhZUzdEaDFUM3FUcldNMUZyQ1VSTDI=', N'未知期刊')
INSERT [dbo].[Article] ([id], [Title], [Author], [UpateTime], [Summary], [Link], [Journal]) VALUES (29, N'湖泊生态系统服务功能支付意愿的影响因素_以洪泽湖为例', N'黄蕾', CAST(0x0000A13900000000 AS DateTime), N'为更好的保护湖泊生态系统,同时为了提供湖泊生态安全管理、宣传、预防等方面的建议,应用目前评价非使用价值较成熟的条件价值法(CVM),以洪泽湖为研究对象,采用实地调研的方式,运用支付意愿问卷调查的形式,结合数据相关分析和回归分析的方法,分析了湖泊生态系统服务功能支付意愿的影响因素。共发放支付卡式CVM问卷520份,回收有效问卷498份,获得支付意愿的分布形态和规律。运用Logit回归模型分析湖泊生态服务功能价值评估过程中的主要影响因素,对比分析了不同人群对恢复该湖泊生态服务功能支付意愿的差异。通过多元统计分析得到在洪泽湖生态系统恢复计划案例中,受访者的支付意愿主要受到家庭年收入、对政府的信任程度和对环境保护的意识等因素的影响,并展开了较为详细的讨论和解释。最后针对模型分析的结果,提出具体可行的增强公众环保态度和环保意愿的建议,为政府相关政策的制定提供理论基础,为决策者选择有效目标人群提供参考依据。', N'http://kns.cnki.net/KCMS/detail/detail.aspx?dbcode=CJFQ&dbname=CJFD2010&filename=STXB201002027&uid=WEEvREcwSlJHSldRa1Fhb09jMjVzQmVWdTJIVGhMYnEwQ2VUMHpPWlg0cz0=$9A4hF_YAuvQ5obgVAqNKPCYcEjKensW4ggI8Fm4gTkoUKaID8j8gFw!!&v=Mjg2OTQ5SFk0UjhlWDFMdXhZUzdEaDFUM3FUcldNMUZyQ1VSTDJlWnVkdkZ5RGtWTDNNTmpuVGJMRzRIOUhNclk=', N'未知期刊')
INSERT [dbo].[Article] ([id], [Title], [Author], [UpateTime], [Summary], [Link], [Journal]) VALUES (30, N'基于CVM的海滨旅游资源生态补偿意愿研究_以北海银滩为例', N'李丹丹', CAST(0x00009CF100000000 AS DateTime), N'通过对北海银滩的实地调研,在充分了解其生态环境现状的基础上设计调查问卷,以面对面的方式随机调查了352位北海银滩游客对海滨旅游资源的生态补偿意愿,以及影响游客补偿意愿的相关因素。研究结果表明:有261人愿意为北海银滩进行生态补偿,平均每人的最小补偿意愿值为61.79元,游客对北海银滩海滨旅游资源影响值(损失值)为元6.87×/a。被调查者的年收入,是否关心环境保护,是否会携带垃圾袋对补偿意愿有十分显著的影响。', N'http://kns.cnki.net/KCMS/detail/detail.aspx?dbcode=CJFQ&dbname=CJFDLAST2015&filename=ORLZ201503129&uid=WEEvREcwSlJHSldRa1Fhb09jMjVzQmVWdTJIVGhMYnEwQ2VUMHpPWlg0cz0=$9A4hF_YAuvQ5obgVAqNKPCYcEjKensW4ggI8Fm4gTkoUKaID8j8gFw!!&v=MzEwNjVMMmVadWR2RnlEa1dydk1Lai9IZExHNEg5VE1ySTVIYllSOGVYMUx1eFlTN0RoMVQzcVRyV00xRnJDVVI=', N'未知期刊')
INSERT [dbo].[Article] ([id], [Title], [Author], [UpateTime], [Summary], [Link], [Journal]) VALUES (31, N'基于选择实验法的胶州湾湿地围垦生态效益损失评估', N'李京梅', CAST(0x0000A41300000000 AS DateTime), N'选择实验法是当前国际上用于评估资源环境价值的前沿方法。本文针对胶州湾湿地围垦生态影响,应用选择实验法,评估湿地围垦造成的生态效益损失,提出生态修复优选方案。在查阅文献和咨询专家的基础上,确定了湿地面积、植被覆盖率、湿地水质和生物多样性4项湿地修复属性。通过对胶州湾地区293名居民进行随机抽样调查,定量评估了湿地修复中不同属性的支付意愿价值,评估结果显示:若将湿地的各项属性修复至基线水平,居民的支付意愿约为321.78元/(年·户),据此测算胶州湾湿地围垦的生态效益损失约为7.67亿元/年。研究结果进一步表明:4个属性中居民对湿地面积变化的关注程度最高,其次是湿地水质,因此政府应当制定以恢复湿地面积为重点的湿地保护和修复政策。', N'http://kns.cnki.net/KCMS/detail/detail.aspx?dbcode=CJFQ&dbname=CJFDLAST2015&filename=ZRZY201501009&uid=WEEvREcwSlJHSldRa1Fhb09jMjVzQmVWdTJIVGhMYnEwQ2VUMHpPWlg0cz0=$9A4hF_YAuvQ5obgVAqNKPCYcEjKensW4ggI8Fm4gTkoUKaID8j8gFw!!&v=MTY2NzBkdkZ5RGxVN3pJUHovUmQ3RzRIOVRNcm85RmJZUjhlWDFMdXhZUzdEaDFUM3FUcldNMUZyQ1VSTDJlWnU=', N'未知期刊')
INSERT [dbo].[Article] ([id], [Title], [Author], [UpateTime], [Summary], [Link], [Journal]) VALUES (32, N'上海池塘养殖环境成本_基于双边界二分式CVM法的实证研究', N'唐克勇.', CAST(0x00009FCB00000000 AS DateTime), N'池塘养殖具有食品供给、空气质量调节、文化服务等多重功能,但在其生产过程中也会产生环境成本。正确认识池塘养殖的正、负生态服务价值,对于避免养殖生产过程中存在的盲目和短视、保持水产养殖业本身的可持续发展、促进水产养殖经济与环境的和谐发展具有重要的现实意义。依据双边界二分式CVM法,通过随机抽样调查法获得当地居民对于环境污染时的受偿意愿(WTA)水平,利用STATA10.0软件定量核算了2010年上海环淀山湖地区的池塘养殖环境成本为1982.26万元/a,约合5105元.a-.1hm-2)。研究表明,居民家庭收入、受教育程度、年龄等社会经济因素对居民的环境污染受偿意愿具有显著性的影响,但其具体的影响力大小和方向还有待进一步的探讨。研究同时表明,双边界二分式CVM法具有较强的稳定性,政府应综合考虑各种因素,制定并执行针对性、公平性的生态补偿政策。', N'http://kns.cnki.net/KCMS/detail/detail.aspx?dbcode=CJFQ&dbname=CJFD2012&filename=STXB201207029&uid=WEEvREcwSlJHSldRa1Fhb09jMjVzQmVWdTJIVGhMYnEwQ2VUMHpPWlg0cz0=$9A4hF_YAuvQ5obgVAqNKPCYcEjKensW4ggI8Fm4gTkoUKaID8j8gFw!!&v=MDE1MTBQTXFJOUhiWVI4ZVgxTHV4WVM3RGgxVDNxVHJXTTFGckNVUkwyZVp1ZHZGeURsVWIzQk5qblRiTEc0SDk=', N'未知期刊')
INSERT [dbo].[Article] ([id], [Title], [Author], [UpateTime], [Summary], [Link], [Journal]) VALUES (33, N'湿地价值评估尺度转换方法_Meta分析研究概述', N'孙宝娣', CAST(0x00009B8400000000 AS DateTime), N'湿地价值评估中的尺度转换是通过一个已经有的、与被估算生态系统相似的另一生态系统的价值来估算该湿地生态系统的价值量的过程。Meta分析(Meta-Analysis)是一种定量其他评价效应的大小,并进行综合分析评价的方法,是分析的分析,综合的综合,具有较高的统计效率及验证其他假设的功能,是一种较为精确的价值转移方法。阐述了Meta分析的定义,介绍了Meta分析的步骤及函数表达式,陈述了国内外学者对Meta分析的应用及研究进展,并对其未来的应用前景进行了展望。', N'http://kns.cnki.net/KCMS/detail/detail.aspx?dbcode=CJFQ&dbname=CJFDLAST2016&filename=LKGL201601020&uid=WEEvREcwSlJHSldRa1Fhb09jMjVzQmVWdTJIVGhMYnEwQ2VUMHpPWlg0cz0=$9A4hF_YAuvQ5obgVAqNKPCYcEjKensW4ggI8Fm4gTkoUKaID8j8gFw!!&v=MjAxMzhNMUZyQ1VSTDJlWnVkdkZ5RGxWTDdOS1NiTVlyRzRIOWZNcm85SFpJUjhlWDFMdXhZUzdEaDFUM3FUclc=', N'未知期刊')
INSERT [dbo].[Article] ([id], [Title], [Author], [UpateTime], [Summary], [Link], [Journal]) VALUES (34, N'养殖池塘生态系统文化服务价值的评估', N'李晟', CAST(0x0000973C00000000 AS DateTime), N'池塘养殖在我国已经有几千年的历史.这种生产模式不仅具有经济功能,还具有文化价值.随着我国经济与文化水平的提高,这种价值将会进一步凸显.对其生态服务价值的评估,可为渔业经济政策的制订提供科学支撑,避免政策扭曲及其所产生的政策失灵,科学地发展水产养殖业及相关休闲服务业,增加养殖经济的附加值,进而提高渔民收入,促进农村经济发展.本文以上海市青浦区淀山湖水源保护区养殖池塘作为研究对象,以实证调查数据为基础,结合该区的相关统计数据,将养殖池塘的文化价值分为游憩价值和存在价值,并在此基础上,以旅游成本法(TCM)和条件价值评估法(CVM)分别对这两种价值进行了估算,测算了总的文化服务价值.结果表明:该区养殖池塘文化服务总价值约为每年2.13亿元,约合231296.69元.hm-2,是该池塘养殖水产品产量市场价值的5.25倍.其中游憩价值约为1.89亿元,存在价值0.24亿元.在推动上海新农村建设的过程中,职能部门需重新认识此类系统的价值.', N'http://kns.cnki.net/KCMS/detail/detail.aspx?dbcode=CJFQ&dbname=CJFD2009&filename=YYSB200912035&uid=WEEvREcwSlJHSldRa1Fhb09jMjVzQmVWdTJIVGhMYnEwQ2VUMHpPWlg0cz0=$9A4hF_YAuvQ5obgVAqNKPCYcEjKensW4ggI8Fm4gTkoUKaID8j8gFw!!&v=Mjc5NjJUWWJMRzRIdGpOclk5R1lZUjhlWDFMdXhZUzdEaDFUM3FUcldNMUZyQ1VSTDJlWnVkdkZ5RGxXcnJOUEQ=', N'未知期刊')
INSERT [dbo].[Article] ([id], [Title], [Author], [UpateTime], [Summary], [Link], [Journal]) VALUES (35, N'珊瑚礁生态系统服务及其价值评估', N'王丽荣、赵焕庭', CAST(0x0000A6EE00000000 AS DateTime), N'珊瑚礁生态系统以其极高的生物多样性和美丽的水下景观而被人类过度利用,为了有效地管理和可持续利用珊瑚礁,对其生态系统服务及价值的评估就显得十分重要。本文介绍了珊瑚礁生态系统服务及其价值,以及评估方法的研究动态。珊瑚礁生态系统服务是指珊瑚礁生态系统与生态过程所形成及维持的人类赖以生存的自然环境条件与其效用,珊瑚礁生态系统服务分为经济性服务、生态性服务和社会性服务3部分,给出相应于珊瑚礁生态系统服务内容的价值分类以及常用的生产效益法、替代费用法、损害费用法、旅行费用法和条件价值法5种评估方法。文中还介绍了中国珊瑚礁的分布与特点,并根据国内珊瑚礁生态系统的状况,指出了中国开展珊瑚礁生态系统服务及其价值评估的迫切性。', N'http://kns.cnki.net/KCMS/detail/detail.aspx?dbcode=CJFQ&dbname=CJFD2006&filename=STXZ200611016&uid=WEEvREcwSlJHSldRa1Fhb09jMjVzQmVWdTJIVGhMYnEwQ2VUMHpPWlg0cz0=$9A4hF_YAuvQ5obgVAqNKPCYcEjKensW4ggI8Fm4gTkoUKaID8j8gFw!!&v=Mjc2ODg3RGgxVDNxVHJXTTFGckNVUkwyZVp1ZHZGeURtVTcvQU5qblRkTEc0SHRmTnJvOUVZb1I4ZVgxTHV4WVM=', N'未知期刊')
INSERT [dbo].[Article] ([id], [Title], [Author], [UpateTime], [Summary], [Link], [Journal]) VALUES (1025, N'基于CVM的闽江河口湿地生态系统非使用价值评价', N'胡喜生', CAST(0x00009FCB00000000 AS DateTime), N'以东亚—澳大利西亚候鸟迁徙路线上重要的驿站———闽江河口湿地为例，运用支付卡式条件价值评估法
( CVM) ，对该湿地生态系统的支付意愿进行面对面的问卷调查。共发放支付卡式 CVM 问卷 500 份，回收有效问卷
482 份，估算出闽江河口湿地生态系统的算术平均支付意愿值为 151. 16 元/a，累计频度中位数为 56. 36 元/a，支付
意愿值相对分布频度曲线基本呈单调递减分布; 考虑到本文目的是核算闽江河口湿地生态系统的经济价值，并为
相关部门提供科学决策，因此，采用算术平均值计算其非使用价值，其值为 5. 01 亿元/a; Spearman 秩相关系数分析
表明支付意愿与收入水平、受教育程度、年龄、性别和职业呈显著相关关系。', N'http://www.cnki.net/KCMS/detail/detail.aspx?QueryID=2&CurRec=1&filename=STBC201206014&dbname=CJFD2012&dbcode=CJFQ&pr=&urlid=&yx=&uid=WEEvREcwSlJHSldRa1FhcEE0NXh1TENCQU5GTWMyK1VkSXFLNERtV3BPUT0=$9A4hF_YAuvQ5obgVAqNKPCYcEjKensW4ggI8Fm4gTkoUKaID8j8gFw!!&v=MzAyODFyQ1VSTDJlWmVab0ZDbm1VTHpLTmpuSmJiRzRIOVBNcVk5RVlJUjhlWDFMdXhZUzdEaDFUM3FUcldNMUY=', N'未知期刊')
INSERT [dbo].[Article] ([id], [Title], [Author], [UpateTime], [Summary], [Link], [Journal]) VALUES (1029, N'm1', N'm1', CAST(0x0000A6EE00000000 AS DateTime), N'm1', N'https://www.baidu.com', N'm1')
SET IDENTITY_INSERT [dbo].[Article] OFF
SET IDENTITY_INSERT [dbo].[Category] ON 

INSERT [dbo].[Category] ([id], [Name]) VALUES (4, N'地区')
INSERT [dbo].[Category] ([id], [Name]) VALUES (5, N'生态系统类型')
INSERT [dbo].[Category] ([id], [Name]) VALUES (6, N'文献综述')
INSERT [dbo].[Category] ([id], [Name]) VALUES (7, N'一级评估')
INSERT [dbo].[Category] ([id], [Name]) VALUES (8, N'二级评估')
INSERT [dbo].[Category] ([id], [Name]) VALUES (9, N'生态系统服务类型')
INSERT [dbo].[Category] ([id], [Name]) VALUES (10, N'方法')
INSERT [dbo].[Category] ([id], [Name]) VALUES (13, N'非市场价值类型')
SET IDENTITY_INSERT [dbo].[Category] OFF
SET IDENTITY_INSERT [dbo].[KeyWordConnection] ON 

INSERT [dbo].[KeyWordConnection] ([id], [ArticleId], [KeyWordId]) VALUES (61, 24, 11)
INSERT [dbo].[KeyWordConnection] ([id], [ArticleId], [KeyWordId]) VALUES (62, 24, 12)
INSERT [dbo].[KeyWordConnection] ([id], [ArticleId], [KeyWordId]) VALUES (63, 24, 13)
INSERT [dbo].[KeyWordConnection] ([id], [ArticleId], [KeyWordId]) VALUES (64, 24, 15)
INSERT [dbo].[KeyWordConnection] ([id], [ArticleId], [KeyWordId]) VALUES (65, 24, 14)
INSERT [dbo].[KeyWordConnection] ([id], [ArticleId], [KeyWordId]) VALUES (66, 28, 20)
INSERT [dbo].[KeyWordConnection] ([id], [ArticleId], [KeyWordId]) VALUES (67, 28, 13)
INSERT [dbo].[KeyWordConnection] ([id], [ArticleId], [KeyWordId]) VALUES (68, 28, 21)
INSERT [dbo].[KeyWordConnection] ([id], [ArticleId], [KeyWordId]) VALUES (69, 28, 18)
INSERT [dbo].[KeyWordConnection] ([id], [ArticleId], [KeyWordId]) VALUES (70, 28, 22)
INSERT [dbo].[KeyWordConnection] ([id], [ArticleId], [KeyWordId]) VALUES (78, 31, 27)
INSERT [dbo].[KeyWordConnection] ([id], [ArticleId], [KeyWordId]) VALUES (79, 31, 28)
INSERT [dbo].[KeyWordConnection] ([id], [ArticleId], [KeyWordId]) VALUES (80, 31, 14)
INSERT [dbo].[KeyWordConnection] ([id], [ArticleId], [KeyWordId]) VALUES (81, 31, 29)
INSERT [dbo].[KeyWordConnection] ([id], [ArticleId], [KeyWordId]) VALUES (96, 29, 13)
INSERT [dbo].[KeyWordConnection] ([id], [ArticleId], [KeyWordId]) VALUES (97, 29, 14)
INSERT [dbo].[KeyWordConnection] ([id], [ArticleId], [KeyWordId]) VALUES (98, 29, 23)
INSERT [dbo].[KeyWordConnection] ([id], [ArticleId], [KeyWordId]) VALUES (99, 29, 24)
INSERT [dbo].[KeyWordConnection] ([id], [ArticleId], [KeyWordId]) VALUES (100, 30, 13)
INSERT [dbo].[KeyWordConnection] ([id], [ArticleId], [KeyWordId]) VALUES (101, 30, 25)
INSERT [dbo].[KeyWordConnection] ([id], [ArticleId], [KeyWordId]) VALUES (102, 30, 26)
INSERT [dbo].[KeyWordConnection] ([id], [ArticleId], [KeyWordId]) VALUES (111, 35, 43)
INSERT [dbo].[KeyWordConnection] ([id], [ArticleId], [KeyWordId]) VALUES (112, 35, 44)
INSERT [dbo].[KeyWordConnection] ([id], [ArticleId], [KeyWordId]) VALUES (113, 35, 45)
INSERT [dbo].[KeyWordConnection] ([id], [ArticleId], [KeyWordId]) VALUES (114, 35, 46)
INSERT [dbo].[KeyWordConnection] ([id], [ArticleId], [KeyWordId]) VALUES (115, 34, 39)
INSERT [dbo].[KeyWordConnection] ([id], [ArticleId], [KeyWordId]) VALUES (116, 34, 40)
INSERT [dbo].[KeyWordConnection] ([id], [ArticleId], [KeyWordId]) VALUES (117, 34, 41)
INSERT [dbo].[KeyWordConnection] ([id], [ArticleId], [KeyWordId]) VALUES (118, 34, 42)
INSERT [dbo].[KeyWordConnection] ([id], [ArticleId], [KeyWordId]) VALUES (119, 33, 35)
INSERT [dbo].[KeyWordConnection] ([id], [ArticleId], [KeyWordId]) VALUES (120, 33, 36)
INSERT [dbo].[KeyWordConnection] ([id], [ArticleId], [KeyWordId]) VALUES (121, 33, 37)
INSERT [dbo].[KeyWordConnection] ([id], [ArticleId], [KeyWordId]) VALUES (122, 33, 38)
INSERT [dbo].[KeyWordConnection] ([id], [ArticleId], [KeyWordId]) VALUES (123, 32, 30)
INSERT [dbo].[KeyWordConnection] ([id], [ArticleId], [KeyWordId]) VALUES (124, 32, 31)
INSERT [dbo].[KeyWordConnection] ([id], [ArticleId], [KeyWordId]) VALUES (125, 32, 32)
INSERT [dbo].[KeyWordConnection] ([id], [ArticleId], [KeyWordId]) VALUES (126, 32, 33)
INSERT [dbo].[KeyWordConnection] ([id], [ArticleId], [KeyWordId]) VALUES (127, 32, 34)
INSERT [dbo].[KeyWordConnection] ([id], [ArticleId], [KeyWordId]) VALUES (1054, 1025, 13)
INSERT [dbo].[KeyWordConnection] ([id], [ArticleId], [KeyWordId]) VALUES (1070, 27, 36)
INSERT [dbo].[KeyWordConnection] ([id], [ArticleId], [KeyWordId]) VALUES (1071, 1029, 37)
SET IDENTITY_INSERT [dbo].[KeyWordConnection] OFF
SET IDENTITY_INSERT [dbo].[KeyWords] ON 

INSERT [dbo].[KeyWords] ([id], [Name]) VALUES (11, N'红树林')
INSERT [dbo].[KeyWords] ([id], [Name]) VALUES (12, N'非使用价值')
INSERT [dbo].[KeyWords] ([id], [Name]) VALUES (13, N'条件价值法')
INSERT [dbo].[KeyWords] ([id], [Name]) VALUES (14, N'支付意愿')
INSERT [dbo].[KeyWords] ([id], [Name]) VALUES (15, N'广西')
INSERT [dbo].[KeyWords] ([id], [Name]) VALUES (16, N'服务功能')
INSERT [dbo].[KeyWords] ([id], [Name]) VALUES (18, N'价值评估')
INSERT [dbo].[KeyWords] ([id], [Name]) VALUES (19, N'广东省')
INSERT [dbo].[KeyWords] ([id], [Name]) VALUES (20, N'海岸带地区')
INSERT [dbo].[KeyWords] ([id], [Name]) VALUES (21, N'经济价值')
INSERT [dbo].[KeyWords] ([id], [Name]) VALUES (22, N'环境资源')
INSERT [dbo].[KeyWords] ([id], [Name]) VALUES (23, N'生态服务功能')
INSERT [dbo].[KeyWords] ([id], [Name]) VALUES (24, N'洪泽湖')
INSERT [dbo].[KeyWords] ([id], [Name]) VALUES (25, N'海滨旅游资源')
INSERT [dbo].[KeyWords] ([id], [Name]) VALUES (26, N'补偿意愿')
INSERT [dbo].[KeyWords] ([id], [Name]) VALUES (27, N'选择实验法')
INSERT [dbo].[KeyWords] ([id], [Name]) VALUES (28, N'围垦')
INSERT [dbo].[KeyWords] ([id], [Name]) VALUES (29, N'生态效益损失')
INSERT [dbo].[KeyWords] ([id], [Name]) VALUES (30, N'池塘养殖')
INSERT [dbo].[KeyWords] ([id], [Name]) VALUES (31, N'环境成本')
INSERT [dbo].[KeyWords] ([id], [Name]) VALUES (32, N'双边界二分式CVM法')
INSERT [dbo].[KeyWords] ([id], [Name]) VALUES (33, N'环境产权')
INSERT [dbo].[KeyWords] ([id], [Name]) VALUES (34, N'生态补偿')
INSERT [dbo].[KeyWords] ([id], [Name]) VALUES (35, N'湿地价值评估')
INSERT [dbo].[KeyWords] ([id], [Name]) VALUES (36, N'尺度转换')
INSERT [dbo].[KeyWords] ([id], [Name]) VALUES (37, N'Meta分析')
INSERT [dbo].[KeyWords] ([id], [Name]) VALUES (38, N'研究概述')
INSERT [dbo].[KeyWords] ([id], [Name]) VALUES (39, N'养殖池塘')
INSERT [dbo].[KeyWords] ([id], [Name]) VALUES (40, N'生态系统的文化服务价值')
INSERT [dbo].[KeyWords] ([id], [Name]) VALUES (41, N'旅行成本法')
INSERT [dbo].[KeyWords] ([id], [Name]) VALUES (42, N'条件价值评估法')
INSERT [dbo].[KeyWords] ([id], [Name]) VALUES (43, N'珊瑚礁生态系统服务')
INSERT [dbo].[KeyWords] ([id], [Name]) VALUES (44, N'生态系统服务价值')
INSERT [dbo].[KeyWords] ([id], [Name]) VALUES (45, N'评价方法')
INSERT [dbo].[KeyWords] ([id], [Name]) VALUES (46, N'可持续利用')
SET IDENTITY_INSERT [dbo].[KeyWords] OFF
SET IDENTITY_INSERT [dbo].[Option] ON 

INSERT [dbo].[Option] ([id], [Name], [CategoryId]) VALUES (9, N'黑龙江', 4)
INSERT [dbo].[Option] ([id], [Name], [CategoryId]) VALUES (10, N'辽宁', 4)
INSERT [dbo].[Option] ([id], [Name], [CategoryId]) VALUES (11, N'海滨海湾', 5)
INSERT [dbo].[Option] ([id], [Name], [CategoryId]) VALUES (12, N'海洋公园', 5)
INSERT [dbo].[Option] ([id], [Name], [CategoryId]) VALUES (13, N'是', 6)
INSERT [dbo].[Option] ([id], [Name], [CategoryId]) VALUES (14, N'否', 6)
INSERT [dbo].[Option] ([id], [Name], [CategoryId]) VALUES (15, N'条件价值评估法', 7)
INSERT [dbo].[Option] ([id], [Name], [CategoryId]) VALUES (16, N'选择实验法', 7)
INSERT [dbo].[Option] ([id], [Name], [CategoryId]) VALUES (17, N'效益转移法', 8)
INSERT [dbo].[Option] ([id], [Name], [CategoryId]) VALUES (18, N'meta', 8)
INSERT [dbo].[Option] ([id], [Name], [CategoryId]) VALUES (19, N'供给', 9)
INSERT [dbo].[Option] ([id], [Name], [CategoryId]) VALUES (20, N'调节', 9)
INSERT [dbo].[Option] ([id], [Name], [CategoryId]) VALUES (31, N'河北', 4)
INSERT [dbo].[Option] ([id], [Name], [CategoryId]) VALUES (32, N'山东', 4)
INSERT [dbo].[Option] ([id], [Name], [CategoryId]) VALUES (33, N'浙江', 4)
INSERT [dbo].[Option] ([id], [Name], [CategoryId]) VALUES (34, N'江苏', 4)
INSERT [dbo].[Option] ([id], [Name], [CategoryId]) VALUES (35, N'上海', 4)
INSERT [dbo].[Option] ([id], [Name], [CategoryId]) VALUES (36, N'福建', 4)
INSERT [dbo].[Option] ([id], [Name], [CategoryId]) VALUES (37, N'广东', 4)
INSERT [dbo].[Option] ([id], [Name], [CategoryId]) VALUES (38, N'广西', 4)
INSERT [dbo].[Option] ([id], [Name], [CategoryId]) VALUES (39, N'海南', 4)
INSERT [dbo].[Option] ([id], [Name], [CategoryId]) VALUES (40, N'湖北', 4)
INSERT [dbo].[Option] ([id], [Name], [CategoryId]) VALUES (41, N'湖南', 4)
INSERT [dbo].[Option] ([id], [Name], [CategoryId]) VALUES (42, N'陕西', 4)
INSERT [dbo].[Option] ([id], [Name], [CategoryId]) VALUES (43, N'四川', 4)
INSERT [dbo].[Option] ([id], [Name], [CategoryId]) VALUES (44, N'甘肃', 4)
INSERT [dbo].[Option] ([id], [Name], [CategoryId]) VALUES (45, N'其他', 4)
INSERT [dbo].[Option] ([id], [Name], [CategoryId]) VALUES (46, N'红树林', 5)
INSERT [dbo].[Option] ([id], [Name], [CategoryId]) VALUES (47, N'内陆水系（河湖江塘）', 5)
INSERT [dbo].[Option] ([id], [Name], [CategoryId]) VALUES (48, N'沙滩', 5)
INSERT [dbo].[Option] ([id], [Name], [CategoryId]) VALUES (49, N'湿地系统', 5)
INSERT [dbo].[Option] ([id], [Name], [CategoryId]) VALUES (50, N'珊瑚礁', 5)
INSERT [dbo].[Option] ([id], [Name], [CategoryId]) VALUES (51, N'海洋资源', 5)
INSERT [dbo].[Option] ([id], [Name], [CategoryId]) VALUES (52, N'其他', 5)
INSERT [dbo].[Option] ([id], [Name], [CategoryId]) VALUES (53, N'旅游成本法', 7)
INSERT [dbo].[Option] ([id], [Name], [CategoryId]) VALUES (54, N'特征价值法', 7)
INSERT [dbo].[Option] ([id], [Name], [CategoryId]) VALUES (55, N'市场价值法', 7)
INSERT [dbo].[Option] ([id], [Name], [CategoryId]) VALUES (56, N'影子工程法', 7)
INSERT [dbo].[Option] ([id], [Name], [CategoryId]) VALUES (57, N'费用支出法', 7)
INSERT [dbo].[Option] ([id], [Name], [CategoryId]) VALUES (58, N'生产函数法', 7)
INSERT [dbo].[Option] ([id], [Name], [CategoryId]) VALUES (59, N'恢复和防护费用法', 7)
INSERT [dbo].[Option] ([id], [Name], [CategoryId]) VALUES (60, N'专家评估法', 7)
INSERT [dbo].[Option] ([id], [Name], [CategoryId]) VALUES (61, N'特征评估法', 7)
INSERT [dbo].[Option] ([id], [Name], [CategoryId]) VALUES (62, N'CVM和TCM', 7)
INSERT [dbo].[Option] ([id], [Name], [CategoryId]) VALUES (63, N'综合', 7)
INSERT [dbo].[Option] ([id], [Name], [CategoryId]) VALUES (64, N'其他', 7)
INSERT [dbo].[Option] ([id], [Name], [CategoryId]) VALUES (67, N'文化', 9)
INSERT [dbo].[Option] ([id], [Name], [CategoryId]) VALUES (68, N'支持', 9)
INSERT [dbo].[Option] ([id], [Name], [CategoryId]) VALUES (69, N'综合', 9)
INSERT [dbo].[Option] ([id], [Name], [CategoryId]) VALUES (70, N'其他', 9)
INSERT [dbo].[Option] ([id], [Name], [CategoryId]) VALUES (83, N'条件估值法（CVM）', 10)
INSERT [dbo].[Option] ([id], [Name], [CategoryId]) VALUES (84, N'选择实验（CE）', 10)
INSERT [dbo].[Option] ([id], [Name], [CategoryId]) VALUES (85, N'特征定价法（HP）', 10)
INSERT [dbo].[Option] ([id], [Name], [CategoryId]) VALUES (86, N'旅行成本法（TCM）', 10)
INSERT [dbo].[Option] ([id], [Name], [CategoryId]) VALUES (87, N'成本替代法', 10)
INSERT [dbo].[Option] ([id], [Name], [CategoryId]) VALUES (88, N'效益转移（BT）', 10)
INSERT [dbo].[Option] ([id], [Name], [CategoryId]) VALUES (89, N'其他', 10)
INSERT [dbo].[Option] ([id], [Name], [CategoryId]) VALUES (90, N'娱乐价值', 13)
INSERT [dbo].[Option] ([id], [Name], [CategoryId]) VALUES (91, N'景观价值', 13)
INSERT [dbo].[Option] ([id], [Name], [CategoryId]) VALUES (92, N'防护价值', 13)
INSERT [dbo].[Option] ([id], [Name], [CategoryId]) VALUES (93, N'选择价值', 13)
INSERT [dbo].[Option] ([id], [Name], [CategoryId]) VALUES (94, N'遗产价值', 13)
INSERT [dbo].[Option] ([id], [Name], [CategoryId]) VALUES (95, N'存在价值', 13)
INSERT [dbo].[Option] ([id], [Name], [CategoryId]) VALUES (96, N'综合价值', 13)
INSERT [dbo].[Option] ([id], [Name], [CategoryId]) VALUES (97, N'其他', 13)
SET IDENTITY_INSERT [dbo].[Option] OFF
SET IDENTITY_INSERT [dbo].[TypeConnection] ON 

INSERT [dbo].[TypeConnection] ([id], [ArticleId], [OptionId]) VALUES (244, 24, 37)
INSERT [dbo].[TypeConnection] ([id], [ArticleId], [OptionId]) VALUES (245, 24, 46)
INSERT [dbo].[TypeConnection] ([id], [ArticleId], [OptionId]) VALUES (246, 24, 13)
INSERT [dbo].[TypeConnection] ([id], [ArticleId], [OptionId]) VALUES (247, 24, 63)
INSERT [dbo].[TypeConnection] ([id], [ArticleId], [OptionId]) VALUES (248, 24, 17)
INSERT [dbo].[TypeConnection] ([id], [ArticleId], [OptionId]) VALUES (249, 24, 69)
INSERT [dbo].[TypeConnection] ([id], [ArticleId], [OptionId]) VALUES (253, 28, 10)
INSERT [dbo].[TypeConnection] ([id], [ArticleId], [OptionId]) VALUES (254, 28, 12)
INSERT [dbo].[TypeConnection] ([id], [ArticleId], [OptionId]) VALUES (255, 28, 13)
INSERT [dbo].[TypeConnection] ([id], [ArticleId], [OptionId]) VALUES (256, 28, 15)
INSERT [dbo].[TypeConnection] ([id], [ArticleId], [OptionId]) VALUES (257, 28, 17)
INSERT [dbo].[TypeConnection] ([id], [ArticleId], [OptionId]) VALUES (258, 28, 19)
INSERT [dbo].[TypeConnection] ([id], [ArticleId], [OptionId]) VALUES (280, 31, 32)
INSERT [dbo].[TypeConnection] ([id], [ArticleId], [OptionId]) VALUES (281, 31, 49)
INSERT [dbo].[TypeConnection] ([id], [ArticleId], [OptionId]) VALUES (282, 31, 13)
INSERT [dbo].[TypeConnection] ([id], [ArticleId], [OptionId]) VALUES (283, 31, 16)
INSERT [dbo].[TypeConnection] ([id], [ArticleId], [OptionId]) VALUES (284, 31, 17)
INSERT [dbo].[TypeConnection] ([id], [ArticleId], [OptionId]) VALUES (285, 31, 19)
INSERT [dbo].[TypeConnection] ([id], [ArticleId], [OptionId]) VALUES (316, 29, 9)
INSERT [dbo].[TypeConnection] ([id], [ArticleId], [OptionId]) VALUES (317, 29, 47)
INSERT [dbo].[TypeConnection] ([id], [ArticleId], [OptionId]) VALUES (318, 29, 13)
INSERT [dbo].[TypeConnection] ([id], [ArticleId], [OptionId]) VALUES (319, 29, 15)
INSERT [dbo].[TypeConnection] ([id], [ArticleId], [OptionId]) VALUES (320, 29, 17)
INSERT [dbo].[TypeConnection] ([id], [ArticleId], [OptionId]) VALUES (321, 29, 19)
INSERT [dbo].[TypeConnection] ([id], [ArticleId], [OptionId]) VALUES (325, 30, 38)
INSERT [dbo].[TypeConnection] ([id], [ArticleId], [OptionId]) VALUES (326, 30, 48)
INSERT [dbo].[TypeConnection] ([id], [ArticleId], [OptionId]) VALUES (327, 30, 13)
INSERT [dbo].[TypeConnection] ([id], [ArticleId], [OptionId]) VALUES (328, 30, 15)
INSERT [dbo].[TypeConnection] ([id], [ArticleId], [OptionId]) VALUES (329, 30, 17)
INSERT [dbo].[TypeConnection] ([id], [ArticleId], [OptionId]) VALUES (330, 30, 19)
INSERT [dbo].[TypeConnection] ([id], [ArticleId], [OptionId]) VALUES (352, 35, 9)
INSERT [dbo].[TypeConnection] ([id], [ArticleId], [OptionId]) VALUES (353, 35, 50)
INSERT [dbo].[TypeConnection] ([id], [ArticleId], [OptionId]) VALUES (354, 35, 13)
INSERT [dbo].[TypeConnection] ([id], [ArticleId], [OptionId]) VALUES (355, 35, 63)
INSERT [dbo].[TypeConnection] ([id], [ArticleId], [OptionId]) VALUES (356, 35, 17)
INSERT [dbo].[TypeConnection] ([id], [ArticleId], [OptionId]) VALUES (357, 35, 69)
INSERT [dbo].[TypeConnection] ([id], [ArticleId], [OptionId]) VALUES (361, 34, 35)
INSERT [dbo].[TypeConnection] ([id], [ArticleId], [OptionId]) VALUES (362, 34, 47)
INSERT [dbo].[TypeConnection] ([id], [ArticleId], [OptionId]) VALUES (363, 34, 13)
INSERT [dbo].[TypeConnection] ([id], [ArticleId], [OptionId]) VALUES (364, 34, 62)
INSERT [dbo].[TypeConnection] ([id], [ArticleId], [OptionId]) VALUES (365, 34, 17)
INSERT [dbo].[TypeConnection] ([id], [ArticleId], [OptionId]) VALUES (366, 34, 67)
INSERT [dbo].[TypeConnection] ([id], [ArticleId], [OptionId]) VALUES (370, 33, 9)
INSERT [dbo].[TypeConnection] ([id], [ArticleId], [OptionId]) VALUES (371, 33, 49)
INSERT [dbo].[TypeConnection] ([id], [ArticleId], [OptionId]) VALUES (372, 33, 13)
INSERT [dbo].[TypeConnection] ([id], [ArticleId], [OptionId]) VALUES (373, 33, 15)
INSERT [dbo].[TypeConnection] ([id], [ArticleId], [OptionId]) VALUES (374, 33, 18)
INSERT [dbo].[TypeConnection] ([id], [ArticleId], [OptionId]) VALUES (375, 33, 19)
INSERT [dbo].[TypeConnection] ([id], [ArticleId], [OptionId]) VALUES (379, 32, 35)
INSERT [dbo].[TypeConnection] ([id], [ArticleId], [OptionId]) VALUES (380, 32, 47)
INSERT [dbo].[TypeConnection] ([id], [ArticleId], [OptionId]) VALUES (381, 32, 13)
INSERT [dbo].[TypeConnection] ([id], [ArticleId], [OptionId]) VALUES (382, 32, 15)
INSERT [dbo].[TypeConnection] ([id], [ArticleId], [OptionId]) VALUES (383, 32, 17)
INSERT [dbo].[TypeConnection] ([id], [ArticleId], [OptionId]) VALUES (384, 32, 19)
INSERT [dbo].[TypeConnection] ([id], [ArticleId], [OptionId]) VALUES (1244, 1025, 36)
INSERT [dbo].[TypeConnection] ([id], [ArticleId], [OptionId]) VALUES (1245, 1025, 49)
INSERT [dbo].[TypeConnection] ([id], [ArticleId], [OptionId]) VALUES (1246, 1025, 14)
INSERT [dbo].[TypeConnection] ([id], [ArticleId], [OptionId]) VALUES (1247, 1025, 15)
INSERT [dbo].[TypeConnection] ([id], [ArticleId], [OptionId]) VALUES (1248, 1025, 17)
INSERT [dbo].[TypeConnection] ([id], [ArticleId], [OptionId]) VALUES (1249, 1025, 19)
INSERT [dbo].[TypeConnection] ([id], [ArticleId], [OptionId]) VALUES (1298, 27, 37)
INSERT [dbo].[TypeConnection] ([id], [ArticleId], [OptionId]) VALUES (1299, 27, 11)
INSERT [dbo].[TypeConnection] ([id], [ArticleId], [OptionId]) VALUES (1300, 27, 13)
INSERT [dbo].[TypeConnection] ([id], [ArticleId], [OptionId]) VALUES (1301, 27, 15)
INSERT [dbo].[TypeConnection] ([id], [ArticleId], [OptionId]) VALUES (1302, 27, 17)
INSERT [dbo].[TypeConnection] ([id], [ArticleId], [OptionId]) VALUES (1303, 27, 19)
INSERT [dbo].[TypeConnection] ([id], [ArticleId], [OptionId]) VALUES (1304, 27, 83)
INSERT [dbo].[TypeConnection] ([id], [ArticleId], [OptionId]) VALUES (1305, 27, 90)
INSERT [dbo].[TypeConnection] ([id], [ArticleId], [OptionId]) VALUES (1306, 1029, 9)
INSERT [dbo].[TypeConnection] ([id], [ArticleId], [OptionId]) VALUES (1307, 1029, 11)
INSERT [dbo].[TypeConnection] ([id], [ArticleId], [OptionId]) VALUES (1308, 1029, 13)
INSERT [dbo].[TypeConnection] ([id], [ArticleId], [OptionId]) VALUES (1309, 1029, 15)
INSERT [dbo].[TypeConnection] ([id], [ArticleId], [OptionId]) VALUES (1310, 1029, 17)
INSERT [dbo].[TypeConnection] ([id], [ArticleId], [OptionId]) VALUES (1311, 1029, 19)
INSERT [dbo].[TypeConnection] ([id], [ArticleId], [OptionId]) VALUES (1312, 1029, 83)
INSERT [dbo].[TypeConnection] ([id], [ArticleId], [OptionId]) VALUES (1313, 1029, 90)
SET IDENTITY_INSERT [dbo].[TypeConnection] OFF
ALTER TABLE [dbo].[KeyWordConnection]  WITH CHECK ADD  CONSTRAINT [FK_KeyWordConnection_Article] FOREIGN KEY([ArticleId])
REFERENCES [dbo].[Article] ([id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[KeyWordConnection] CHECK CONSTRAINT [FK_KeyWordConnection_Article]
GO
ALTER TABLE [dbo].[KeyWordConnection]  WITH CHECK ADD  CONSTRAINT [FK_KeyWordConnection_KeyWords] FOREIGN KEY([KeyWordId])
REFERENCES [dbo].[KeyWords] ([id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[KeyWordConnection] CHECK CONSTRAINT [FK_KeyWordConnection_KeyWords]
GO
ALTER TABLE [dbo].[Option]  WITH CHECK ADD  CONSTRAINT [FK_Option_Category] FOREIGN KEY([CategoryId])
REFERENCES [dbo].[Category] ([id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Option] CHECK CONSTRAINT [FK_Option_Category]
GO
ALTER TABLE [dbo].[TypeConnection]  WITH CHECK ADD  CONSTRAINT [FK_TypeConnection_Article] FOREIGN KEY([ArticleId])
REFERENCES [dbo].[Article] ([id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[TypeConnection] CHECK CONSTRAINT [FK_TypeConnection_Article]
GO
ALTER TABLE [dbo].[TypeConnection]  WITH CHECK ADD  CONSTRAINT [FK_TypeConnection_Option] FOREIGN KEY([OptionId])
REFERENCES [dbo].[Option] ([id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[TypeConnection] CHECK CONSTRAINT [FK_TypeConnection_Option]
GO
