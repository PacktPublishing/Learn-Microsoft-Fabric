# Learn Microsoft Fabric 

<a href="https://www.packtpub.com/product/learn-microsoft-fabric/9781835082287?utm_source=github&utm_medium=repository&utm_campaign=9781835082287"><img src="https://m.media-amazon.com/images/I/81OkKRxxY5L._SL1500_.jpg" alt="" height="256px" align="right"></a>

This is the code repository for [Learn Microsoft Fabric](https://www.packtpub.com/product/learn-microsoft-fabric/9781835082287?utm_source=github&utm_medium=repository&utm_campaign=9781835082287), published by Packt.

**A practical guide to performing data analytics in 
the era of artificial intelligence**

## What is this book about?
Discover the capabilities of Microsoft Fabric, the premier unified solution designed for the AI era, seamlessly combining data integration, OneLake, transformation, visualization, universal security, and a unified business model. This book provides an overview of Microsoft Fabric, its components, and the wider analytics landscape.

This book covers the following exciting features:
* Get acquainted with the different services available in Microsoft Fabric
* Build end-to-end data analytics solution to scale and manage high performance
* Integrate data from different types of data sources
* Apply transformation with Spark, Notebook, and T-SQL
* Understand and implement real-time stream processing and data science capabilities
* Perform end-to-end processes for building data analytics solutions in the AI era
* Drive insights by leveraging Power BI for reporting and visualization
* Improve productivity with AI assistance and Copilot integration

If you feel this book is for you, get your [copy](https://www.amazon.com/dp/1835082289) today!

<a href="https://www.packtpub.com/?utm_source=github&utm_medium=banner&utm_campaign=GitHubBanner"><img src="https://raw.githubusercontent.com/PacktPublishing/GitHub/master/GitHub.png" 
alt="https://www.packtpub.com/" border="5" /></a>

## Instructions and Navigations
All of the code is organized into folders. For example, Chapter03.

The code will look like the following:
```
COPY INTO [dbo].[MyTable]
FROM 'https://mystorageaccount.blob.core.windows.net/mycontainer/
curated/weather/florida_weather.parquet'
WITH (
     CREDENTIAL =
            (
            IDENTITY = 'SHARED ACCESS SIGNATURE',
            SECRET = ''
            ),
     FILE_TYPE = 'PARQUET'
);
```

**Following is what you need for this book:**
This book is for data professionals, including data analysts, data engineers, data scientists, data warehouse developers, ETL developers, business analysts, AI/ML professionals, software developers, and Chief Data Officers who want to build a future-ready data analytics solution for long-term success in the AI era.
For PySpark and SQL students entering the data analytics field, this book offers a broad foundation for developing the skills to build end-to-end analytics systems for various use cases. Basic knowledge of SQL and Spark is assumed.

With the following software and hardware list you can run all code files present in the book (Chapter 1-11).
### Software and Hardware List
| Chapter | Software required | OS required |
| -------- | ------------------------------------ | ----------------------------------- |
| 3-6 | A modern web browser (Microsoft Edge or Google Chrome) | Windows, macOS, or Linux |


### Related products
* Azure Data Engineering Cookbook [[Packt]](https://www.amazon.com/dp/1803246782?utm_source=github&utm_medium=repository&utm_campaign=9781839218750) [[Amazon]](https://www.amazon.com/dp/1803246782)

* Artificial Intelligence with Power BI [[Packt]](https://www.amazon.com/dp/1801814635?utm_source=github&utm_medium=repository&utm_campaign=9781803241067) [[Amazon]](https://www.amazon.com/dp/1801814635)

## Get to Know the Authors
**Arshad Ali**
is a principal product manager at Microsoft, working on the Microsoft Fabric product team in Redmond, WA. He focuses on Spark Runtime, which empowers both data engineering and data science experiences. In his previous role, he helped strategic customers and partners adopt Azure Synapse and Microsoft Fabric.
Arshad has more than 20 years of industry experience and has been with Microsoft for over 16 years. He is the co-author of the book Big Data Analytics with Azure HDInsight and the author of over 200 technical articles and blogs on data and analytics. Arshad holds an MBA from the Foster School of Business at the University of Washington and an MCA from India.


**Bradley Schacht**
is a principal program manager on the Microsoft Fabric product team based in Saint Augustine, Florida. Bradley is a former consultant and trainer and has co-authored five books on SQL Server and Power BI. As a member of the Microsoft Fabric product team, Bradley works directly with customers to solve some of their most complex data problems and helps shape the future of Microsoft Fabric. Bradley gives back to the community by speaking at events, such as the PASS Summit, SQL Saturday, Code Camp, and user groups across the country, including locally at the Jacksonville SQL Server User Group (JSSUG). He is a contributor on SQLServerCentral and blogs on his personal site, BradleySchacht.


## Other books by the author
[Microsoft Power BI Quick Start Guide - Second Edition](https://www.packtpub.com/product/microsoft-power-bi-quick-start-guide-second-edition/9781800561571?utm_source=github&utm_medium=repository&utm_campaign=9781800561571)

[Microsoft Power BI Quick Start Guide - Third Edition](https://www.packtpub.com/product/microsoft-power-bi-quick-start-guide-third-edition/9781804613498?utm_source=github&utm_medium=repository&utm_campaign=9781804613498)


