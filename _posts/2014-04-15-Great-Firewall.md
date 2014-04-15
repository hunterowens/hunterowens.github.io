---
layout: post
title:  "The Great Firewall of China: From the Inside"
date:   2014-04-15 10:00:00
categories: firewall
---

As many of you know, I'm spending the next few months in China studying on a University of Chicago program hosted at Renmin University, right near the high-tech district in Beijing. One thing that I've been getting up close and personal with is the Great Firewall of China, which has been fun. I'm staying in the international dorm at Renmin - in this post, I'll run down the available connections to a student at Renmin, access to things outside the Great Firewall, and show, with data, why always being outside the great firewall (typically via VPN) is untenable for an average user. The tl:dr version, however, is that connections outside the Great Firewall are far, far slower than connections inside, providing an incentive to use Chinese products. 

First, one needs to realize what the options to be connected to the web for an average University student. In the Renmin dorm, it took 2 weeks to get it up and running, but there are three different types of connections. The first is the official Renmin WiFi network, which is often down and frequently not avaliable in any particular spot in the dorm. The next is 'CMCC', or the China Moible paid network (I got a connection through Boingo for 12$/month). This connection is far more reliable but is also paid. (CMCC is similar to other paid networks in the US such as Boingo or AT&T networks avaliable in Airports and other public spaces). Finally, many students (based on the number of visable WiFi networks in range of my room) choose to purchase a WiFi router and set it up as a bridge from the ethernet ports avaliable in the room. It doesn't hurt that you can purchase a WiFi router for around 80-100 rmb (14-18 USD) at the nearby electronics marketplace. So, how do these three option compare on speed? (All measurements taken from the same server in Beijing based on ping from [Speedtest.net](http://speedtest.net)). Testing was done between 10pm and 11pm China Standard Time on April 14th, 2014. 

**Download Speed**

![downloadspeed](/img/greatfirewall/download_speed.png)

**Upload Speed**

![uploadspeed](/img/greatfirewall/upload_spped.png)

*taller is better*

As you can see, the campus wifi is far slower than either of the paid options. However, students do get connection speeds that are capable of streaming, if they are not relying on the campus wifi. Yet, what starts to happen when you connect to a VPN in America?

I tested three different VPNs. The first, the University of Chicago's [cVPN](http://cvpn.uchicago.edu/) is a Cisco VPN running in Chicago. The next is a [openVPN](http://openvpn.net/) VPN configured on a [DigitalOcean](http://digitalocean.com/) instance in the New York datacenter with 2 GB of memory (default settings). Finally, I tested a [IPVanish](https://www.ipvanish.com/) VPN exited on the Chicago-2 node. 

![vpnspeed](/img/greatfirewall/vpndownload.png)

As you can see, the VPN speed are anywhere from 5 to 40 times slower than the Great Firewall connections. And this is running on the fastest internet connection, which required setting up a WiFi bridge. What really kills you, however, in using Twitter, Facebook, Netflix, etc on a day to day basis is ping. 

![pingchart](img/greatfirewall/ping.png)

Ya, it's that bad. Essentially, there is not incentive to use any American service because it will be exponentially slower and will cost you. (DigitalOcean setup costs 20$/month, IPVanish 10$/month). 

## Additional Work

1. My friend Pete spoke about how CS major's at one Chinese university used Google App Engine as a way to get free VPN services. It would be useful to test this option out. 
2. SSH Tunneling? 
3. All of my exit nodes were in the eastern US. Would an exit node in a closer territory be far faster?
4. This is only for an international dorm in one university. More data is needed. 

## Notes

[All code (to generate charts) and data is avaliable.](http://nbviewer.ipython.org/urls/raw.githubusercontent.com/hunterowens/hunterowens.github.io/master/notebooks/FirewallCharts.ipynb?create=1)



