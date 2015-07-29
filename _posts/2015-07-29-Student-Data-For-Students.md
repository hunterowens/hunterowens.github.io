---
layout: post
title:  "Student Data, for Students?"
date:   2015-07-29 10:00:00
categories: Open-data  
---
## Student Data, for Students? 

Let’s say you’ve decided to work on a student/educational data project, as the [Bill and Melinda Gates foundation](http://www.teachersknowbest.org/) has recently suggested. You should want to make student data work for the creator of the data, students. For too long edTech has been ruled by a reporting up model - data produced by students and teachers goes to principals, administrators and states. The TeachersKnowBest report suggests that "Only 54% of teachers perceive the digital products their students use frequently to be effective." This post is an attempt to answer why this happens. Educational technology sit in silos, frequently unused and ineffective. A universal platform doesn’t yet exist, but people are working on it. However, progress will be made in small steps towards this goal in small steps, not a large, monolithic process. 

However, I believe that in order to make informed, data driven decisions in schools, we need to give students their data back. 

### The Problem

Where is the single source of truth for student  data? Is it the SIS (Student information system)? Is it a school operated data warehouse? Is it a third-party data warehouse (ie, SchoolZilla)? The possibilities are endless. There is no Single Source of Truth for the average educational technology user. This leaves teachers, students and developers stuck in a maze of options and no way to understand the entire picture of learning. 

First of all, teachers spend far too much time on manual data entry, or manual cross checking. If you want the NWEA Map Score, you go to that website, if you want the State score, you check somewhere else, and finally, if you want attendance information, you check the SIS. A damning quote from Sommerville Public School teachers- "Right now we do a lot of paper collaboration where we just print each other’s information." (NOTE:  https://github.com/codeforamerica/somerville-teacher-tool/issues/25)

Education technology needs to protect teacher time. Every hour that education technology developers require of teachers is an hour that isn’t spent planning lessons, meeting with students and engaging with their class. Bad education technology is directly harming students. 

Ideally, the SIS (Student Information System) would be the single source of truth in a school system, but this is not the case. Not only is the SIS market fractured, but most SIS struggle to integrate legacy systems with undocumented APIs. (NOTE:  For a developer, an API is the way to communicate to another system. Without documentation, we built hacky, brittle systems that are likely to fail. The undocumented APIs are how vendors encourage lock in. ) This hampers the development of agile systems that respond quickly to student needs, and encourages vendor lock-in. SIS have their market because they comply with state reporting standards, not because of teacher and student needs. 

### How did this happen?

State reporting standards are incredibly complex. For example, logging data into [CALPADS](http://www.cde.ca.gov/ds/sp/cl/calpadsfaqs.asp), the California State Reporting tool, is a difficult process. (And this is only one of two systems that you are required to report to as a California School District, the other being CBEDS, which is another long acronym. ). Because of this, the primary purchasing requirement of the SIS is to expedite this process of state reporting. Therefore, the SIS is not built to be a central, usable information hub for students, teachers and parents who are the true stakeholders in this system. EdTech Data focuses on a reporting up model, rather than a reporting out model. In order to make informed, data-driven decisions in schools, we need to give students their data back. 

Currently, a couple different integration products exists (NOTE:  Tools that help developers or districts build unified linked data warehouses. ), namely, EdFi and EScholar. These solutions are inadequate, because neither of them focus their data model on how to adequately build a permissions model for students. (It would be a very bad thing if Timmy could see Jane’s grades, and such). EdFi has decided that building in the business logic of the application into the data standard (NOTE:  See the EdFI operational data store docs. ) is the path forward, I disagree. The EdFi standard is overly complex, and by grafting the business logic and data store onto the product, makes it impossible to built around certain use cases. 

Furthermore, standards such as EdFi and CEDS (Common Educational Data Standard), although open source or government supported, don’t have open source and reproducible code to help integrate with existing solutions that are out in the classroom. Basically, I can read the EdFi standard, but I can’t get code to transform my SIS or Standardized Test Provider data into it. We need open source tools for interoperability. 

### Moving Forward

  School Data [Data Analysts, Chief Data Officer, Evaluation Teams] people are stuck - they are overburdened, under resourced, and stuck with infrastructure they that can’t integrate with (NOTE:  Cough, Powerschool, Cough. ). The chief drivers and users of data in schools need to change, away from administrators and towards students and teachers. Our small part of the story is openEduConnect. 

  OpenEduConnect is a github organization dedicated to building open source tools for education data. [Eduextractor](https://github.com/openEduConnect/edu-data-standards), our first project, is a python package that extracts and transforms data from education data sources such as Powerschool and the NWEA MAP exam. The first release is coming in August. We share resources with the Code for America Somerville Schools team, which has been an excellent partner. 

  The backstory on OpenEduConnect is best described by Alex Soble, of Code for America, who noted that myself and he were working on similar SIS export tools. We quickly realized that SIS and other educational export integrations were a frequent use case for educators, ed tech companies and other stakeholders. We aim to build those tools in an open and interoperable manner. 

  We also aim to be a knowledge sharing organization, as well. We’ve had an extensive conversation around education data standards, and would like to have more community members contribute. [Come join our conversation](https://github.com/openEduConnect/edu-data-standards). 

  Education technology no longer has to be a vast sea of vendors competing for contracts and making money by locking in their clients. Now, we have the opportunity to build a community around open tools and standards for students. 

  Join us, won’t you? 

  Thanks to Will Craft, Alex Soble and Andrew Martin for reviewing and helping produce this article.
