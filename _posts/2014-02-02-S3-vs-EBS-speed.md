---
layout: post
title:  "S3 vs EBS: Which is faster?"
date:   2014-02-02 10:00:00
categories: amazonaws
---

#### Or, AWS Speedtest: EBS vs S3

### Methods

To test, I used the [2013 Crime Dataset](https://data.cityofchicago.org/Public-Safety/Crimes-2010/q4de-h6yq) from the City of Chicago. It is around 73 mb. I tested EBS locally mounted, NFS mounted, and S3. Each test was run on a m1.small instance in us-west-2, and the s3 data was stored in the same region. The NFS mount was an m1.large instance in the same region. The instances ran Ubuntu 12.04 LTS. S3 was tested using pandas read HTML and read S3 options. 

The test code loaded each dataset from the respective location into a pandas dataframe. 

<script src="https://gist.github.com/hunterowens/8779252.js">var test = "test"</script>

<hr>

### Results


<table>
	<tr>
		<th>Method</th>
		<th>Time (s)</th>
	</tr>
	<tr>
		<td>S3 over HTML</td>
		<td>23.8897938728</td>
	</tr>
	<tr>
		<td>S3 over S3</td>
		<td>28.6781361103</td>
	</tr>
	<tr>
		<td>Local Mount</td>
		<td>15.3996708393</td>
	</tr>
	<tr>
		<td>NFS Mounted</td>
		<td>17.7497649193</td>
	</tr>
</table>

<br>

So, EBS is faster than loading from an S3, but not by as much as you'd think. I'll try and run this with and IO optimized volume sometime soon. Something is up with Boto's S3 loading options, though. 
