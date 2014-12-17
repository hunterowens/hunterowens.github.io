---
layout: post
title:  "Open Source, Closed Data"
date:   2014-12-17 10:00:00
categories: Open-Source
---

One problem organizations have faced in the past when opening up their data is that, well, the data has to remain closed. For example, data with either [HIPAA](http://www.hhs.gov/ocr/privacy/) or [FERPA](http://www2.ed.gov/ferpa) provisions is pretty much stuck in a closed state. Furthermore, many organizations are reluctant to open up certain datasets. However, all hope is not lost, rather, this article will advance the idea of *Open Source, Closed Data* and present several implementation strategies. 


## The Reality
As much as voices in Civc Tech believe in the imperative of opening up datasets, there are certain situations in which it just cannot happen. However, this should not prevent an organization from being able to take advantage of the benefits of open sourcing their code. 

Partners with the Data Science for Social Good fellowship know that we release all of our code under an open source license, but alas, not all are willing to let their data or information out into the public. However, as a civic tech community, we need to encourage non-profits, governments, and others to open up their code, even if they cannot or will not open up their data.

## Why? 
Organizations benefit from putting open source code out there- the benefits far outweigh the cost. First, Open source code is a key metric that good talent will be looking for- hiring becomes a whole lot easier when you can just say 'here, take a look at what we've done'. Furthermore, participating in open source allow you and similar organizations to share efforts. For example, the [NPR Apps Template](https://github.com/nprapps/app-template) and the Chicago Tribune's [Tarbell Project](https://github.com/tarbell-project/tarbell) have become standards in journalism, used outside of their organization and receiving improvements because of it. 

Open sourcing acts as a signal that your organization is up to date with certain practices and norms- furthermore, this can be a way of modernizing and keeping up to date with best practices. However, many organization are wary of sharing code - this should not be as much of a concern as a it often is, alas. Working in the open often improves the quality of the work and the code, as bad practices such as putting secret keys into source control become untenable. Large organizations such as Facebook, Google and smaller organizations release open source code, and civic tech groups should also. 

Sharing concerns with code often come down to is somebody going to be able to duplicate the work. However, the advantages of open source outweigh the costs.  In fact, one may be able to drive industry specific standards by participating in open source. Another concern tends to be embarrassment over programming standards, although, this fear is almost certainly unfounded. [Open Tech Strategies](http://opentechstrategies.com/) is great at helping build support for open tech projects, and I would encouraging contacting them if you need help inside your organization.

## Strategies 
- Fake Data
	* One method that we have employed at the Data Science for Social Good fellowship is providing a separate open source repo with fake data. The [Match.Edu](https://github.com/dssg/match.edu) open source repo contains scripts to generate fake, rather than real data, and we do development on the actual data in a separate, private, Github repo. The benefits of this is that there is a full, functional project for people to play with. However, we have to keep the open source repo up to data with the closed source data, which is not always possible. Furthermore, building anonymous data that is accurate distributions is tricky. This method is often best suited for research-type projects. 
- Open Repo without Data
	* At KIPP NJ, they have a [repository](https://github.com/TEAMSchools/mandi) that consists of the database schema's for the entire organization. By open sourcing this, they have provided the way forward for many schools in the KIPP network and outside to adopt the KIPP NJ schema. Although you can not run analysis on the KIPP data, one can get an idea of what data is important to collect and what schema's work. This method works very well from inside institutions. 
- Data Documentation
	* Releasing data documentation can provide a way for somebody to be building or at least thinking about what they can do with your data, and a way to build partnerships. It is, however, pretty easy to get out their, which is why it represents a good first step. Often the US census does this with sensitive data. From their, researchers can request what specific data that they need. 

	These methods represents ways for organizations to help participate and build a strong technical footing, that ideally allows them to become part of the civic tech community in a deeper, more meaningful way. *Open Source, Closed Data* is a potential model to improve the quality of work at a whole host of institutions. 

## Thoughts/Comments/Concerns
Email the author or tweet @hunter_owens. 
