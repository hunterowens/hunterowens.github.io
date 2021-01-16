---
layout: post
title:  "One weird trick to save on housing costs" 
date:   2021-01-15 10:00:00
categories: open-data it-reform la los-angles
---

If you've been following along to the saga of LA's Measure HHH and exploding housings costs for affordable housing in CA, you may be wondering, Hunter, why does it cost so much to build affordable housing in Los Angeles? Fortunately, for those of you haven't been in the weeds of watching LA attempt to build [10,000 units](https://cao.lacity.org/Homeless/index.htm) of housing using 1.2 billion dollars in bond funding, there's both an excellent [LA Times](https://www.latimes.com/homeless-housing/story/2020-04-09/california-low-income-housing-expensive-apartment-coronavirus) piece on how california has seen rising costs in subsidized housing and a detailed [City Controller Audit](https://lacontroller.org/audits-and-reports/high-cost-of-homeless-housing-hhh/) on Measure HHH. 

There's been a lot of ink spilled on major reforms, from zoning, CEQA, labor and land and construction costs. However, there hasn't been a detailed write-up of how simple lack of state capacity, bad IT practices, and business process reform are key to saving cashing and housing more people. 

To start, we have to understand two very different types of "stacks".

One is the government technology stack and the high cost of deploying basic applications, linked forms and other easy to use business process tools. These tools and staff capacity, when deployed correctly, make working with, in and for government a breeze. Currently, there is a high cost of deploying linked forms, new processes and launching IT services in the City of Los Angeles because the policy choice to balkanize the IT org. For example, the City of Los Angeles has both a central [IT org](https://ita.lacity.org/) while Departments, for example, the Housing and Community Investment department has their own [IT section or "systems group"](https://cityfone.lacity.org/verity/department_directory/h030HPP.pdf). When HCID needs a new web application, printer, or other need, they turn to the systems group, which is generally limited in scope to users inside the department. Application development or workflow management is left up to the same people responsible for printers and presentation software, rather than centralizing with dedicated digital teams that you would expect for any modern enterprise. 

The second stack, is the developer financing stack. That is, how do affordable housing developers in Los Angeles financing the homes. Typically, the financing stack includes federal tax credit money ([LITHC](https://www.huduser.gov/portal/datasets/lihtc.html), more), state and local dollars, or other funds. Making sure your "stack" meets all the different guidelines and is fully-funded by certain deadlines is a huge, resource and time consuming enterprise. If cities collected information once and matched it, rather than requiring it dozens of times, it would greatly reduce the burden on Affordable Housing developers. 

Sidebar: Here's what the LITHC funded query tool looks like. Most other lookup tools and forms used by housing developers (the customer!) are approximately this quality. 

![A Screenshot of the LITHC Query Tool](/img/lihtc.png)

Back in June 2019, a coalition of the main affordable housing developers in the City of Los Angeles, _The Supportive Housing Alliance_, released an open letter to City Leaders on how to breakdown the barriers in developing affordable housing. I was unable to locate a copy online so I've posted it [here](/papers/ltr_fast_tracking.pdf) (you should read the whole thing, it's great). If you accept the conclusion that time spent in [permitting / development rule raises the cost of the housing](https://ternercenter.berkeley.edu/research-and-policy/development-costs-lihtc-9-percent-california/), reducing administrative barriers to permanent supportive housing is one of the easiest ways to increase the amount of money available and the amount of PSH built!  

Let's look at the first recommendation from the letter: 

```
Streamline the funding applications and approvals for all local sources of funds, with a universal application for capital funds and rental subsidies.   
```

This is a case for classic business process reform. Currently affordable housing developers spend months to years changing the [pro-formas](https://www.localhousingsolutions.org/analyze/using-a-pro-forma/) in excel to send in slightly different applications for funding. Rather, this recommendation calls for a central application that handles the two main types of funding. The central IT org should be empowered here to make user-centric business process reforms by doing research with the users (Affordable Housing Developers) and figuring out how best to empower them and make it easier, rather than harder, to navigate this process.

However, given that the systems group is under-resourced and there isn't an insistence from IT stakeholders that this be built, but rather, staffing is used to paper over this by passing virtual forms from one another. There is no staff placed between developers and program staff whose job it is to do user research, advocate for reform, or simply, make the process better. Bringing user researchers into a central IT group and empowering them to ["fix forms"](https://medium.com/@jgee/what-i-learned-in-two-years-of-moving-government-forms-online-1edc4c2aa089) similar to the City of Boston would make it easier for affordable housing developers to navigate this process of applying for future Affordable Housing Trust Fund Dollars. 

The process for applying for affordable housing funds is currently managed via a bunch of PDFs and spreadsheets being passed around between City Staff, Developers, and other stakeholders. Without a mandate to do the process reform, the CRM and workflow management software, and a citywide centralized team to do the work, we will spend tons of money while developers are stuck in limbo. Let's turn to recommendation number two.

```
Improve the process for providing City-owned land as supportive housing development sites, a critical program to expanding production, reducing costs, and promoting geographic diversity in siting, by:
...
Reduce or eliminate multiple approvals by the City Council and the Mayor.  For example, there are currently seven (7) Council approvals needed to complete just the site control and financing for each site, not including any entitlements approvals.  
```
In the first section, we talked about the need to digitize the process and do business process reform. The next step once that process is digitized? Make it efficient. In a future where the City actually built _systems_ to manage our work, it would be able possible to accurately track how many projects are effectively pocket vetoed by withheld council approval. 

Additionally, we turn back to the lack of being able to move concurrently. Every developer in this list has to develop it's own workflow, way of tracking project funding, and property release, and that's before we even get to the broken entitlement process. Currently, the broken process empower behind the scenes action, since it is not transparent at all which of __7__ approvals have been obtained and where the hold up is. Embracing a systematic process would require us to move "informal" approvals into formal ones, taking power away from Councilmember discretion and ideally, bringing as much housing to Angelenos as quickly as possible. 

Finally, the City's bifurcated IT Structure means that there is a lack of a centralized asset management system, and futhermore, no incentive to implement or budget for one. This means, as has been heavily documented, getting merely a list of City owned properties was a massive list? A list of properties with the requisite metadata (entitlements, trusts, obligations, etc? Near impossible). 

They continue with the recommendations: 

```
Shorten the City loan and agreement execution processes, as well as disbursements, by:
a) Reduce or eliminate multiple approvals by the City Council and the Mayor.   HCID should not be required to secure City Council/Mayoral re-approval of a loan after initial approval, unless the project or loan terms have substantially changed.   Approval of an HHH allocation (or allocation of other City funds), approval of the commitment for tax-exempt bonds, and the TEFRA hearing should be the only approvals required.  
...
Shorten HCID’s process for approving draws and releasing funds, including commitment to funding draws within three days of approval and the ability to wire funds instead of cutting and mailing checks.   
Establish a once annual background check process, valid for one year after clearance, for each developer organization instead of by specific project.  
```

The kvetching here, about the inability to get funding within a reasonable timeline has led to the demise of housing project given that they need to "stack" funding from across agencies, etc, means that projects are delayed, having increase costs or are even outright cancelled because of a broken process. 

Again, a team of user researchers and a customer centric process reform is required here - along with a deep, citywide integration into better payments services and banking. If Airbnb can pay thousands of hosts within 24 hours, why can't the City track and release payments via wire transfer, a technology invented in [1872](https://en.wikipedia.org/wiki/Wire_transfer).

The final recommendation: 
```
Ensure streamlined processes that result in more efficient approvals throughout the entire development process.  For example:
...
The City should coordinate all plan check, permit, and other approvals needed from not solely Department of Building and Safety and City Planning, but also the Bureau of Engineering, LA Department of Water and Power, and the Fire Department.   Appoint a person or small team of people with authority to move all City approvals and decisions on a guaranteed, pre-set timeline. 
``` 

This final recommendation drives me nuts. (the need for it to exist, not the compliant, which is valid). By bifurcating IT in the City's governance, there is no incentive for systems groups to fund and work together, therefore, every single one of these process run by a single organization lives in separate, disparate systems that rarely if ever talk to each other. Again, forcing a API centric approach to process reform and empowering a group to fix these systems is critical. Currently, systems groups report to individual department General Managers, rather than the City CIO. This is in contrast to the City's Personnel Department, which staffs the HR function in each City Department. 

The lack of coordination among permit issuing agencies has been know for decades - [BuildLA](https://buildla.lacity.org/) was a [signature intiative](https://www.lamayor.org/mayor-garcetti-announces-la-track-100000-unit-housing-goal) of the early Garcetti years yet the political will nor funding was ever provided to go beyond a simple website showing all the different permit issuing agencies. The city's websites need to stop being a reflection of the org chart, but rather, a service and constituent centric approach in order to avoid continued failures at simplifying and improving this. 

The entire coalition should be applauded for advocating on how to deliver housing faster and cheaper for Angelenos. Now it's up to City Hall to reform IT structures, empower staff and reform this process to make to make sure that we don't waste money for badly needed housing by staffing broken systems. 