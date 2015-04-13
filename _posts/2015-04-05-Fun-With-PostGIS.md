---
layout: post
title:  "Fun with PostGIS and Chicago City Data"
date:   2014-12-17 10:00:00
categories: Open-Source 
---

Many organizations use ArcGIS, from ESRI, as the main geospatial analysis tool. This post is about how quickly you can turn your machine equipped with PostGIS and GDAL into a geodata crunching monster. 

## Requirements

*For those on MacOS X, consider using [homebrew](http://brew.sh) to install the following*

* Postgres/PostGIS 
* GDAL
* [City of Chicago Buildings Shapefile](https://data.cityofchicago.org/Buildings/Building-Footprints/qv97-3bvb)

## The state of Chicago buildings

1. create a database called `chibuildings`. Use `createdb chibuildings`. 
2. Create the postGIS extension by running `CREATE EXTENSION postgis` using the psql command line promt. 
3. Upload the unzipped shapefile by running `ogr2ogr -f "PostgreSQL" PG:"dbname=chibuildings" ~/Downloads/Building_Footprints/buildings.shp -skipfailures -append`. This will load all the buildings into a table called buildings, while appending to the existing rows, along with ignoring all failures. 
4. SQL Funtimes:

```
SELECT bldg_condi,COUNT(*) as `NUM` FROM buildings GROUP BY bldg_condi;
```

This command selects the building condition for each building, ads it to the count, and then groups by condition. The output should look something like this. 


```
bldg_condi     |  num
--------------------+--------
                   | 376763
SOUND              | 379195
NEEDS MINOR REPAIR |  73137
UNINHABITABLE      |   1152
UNNHABITABLE       |      5
NEEDS MAJOR REPAIR |  10639
(6 rows)
```


This shows you how with fewer than 3 commands, you can compute interesting statistics about geographies. Furthermore, you now have access to the entire Chicago buildings database, making it easy to compute things like total building square footage, for example. 