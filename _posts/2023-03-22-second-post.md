---
layout: post
title: LIRR Stops and Zoning in Northeast Queens
subtitle: More Housing in NE Queens
cover-img: /assets/img/path.jpg
thumbnail-img: /assets/img/thumb_busstops_012022.png
share-img: /assets/img/path.jpg
tags: [lirr, queens, nyc, gis, second post]
---
This is my second post on my "website"!

I live in northeast Queens and I have heard about people in the area being opposed to governor Hochul's plan to increase housing half a mile from LIRR train stops. So I downloaded some data and tried to see where housing could potentially be built in northeast Queens.

1. I first downloaded the data for the LIRR stops and selected stops in what I considered to be northeast Queens
2. Then I created a half mile buffer around these LIRR stops
3. Next, I clipped the zoning data so that I could see the zoning areas now in these half mile buffers
4. 

For this project right now, I focused on the local bus routes. I took the local bus data from the MTA website and mapped the bus stops to make sure I was mapping the current bus stops. I also used RStudio to download shapefiles with census data that I wanted my web map to have. I used tidycensus, which is a R package, in RStudio to process the ACS 2019 data for population, median income, and percent poverty. I used Queens County census data and didn't clip the census data to the Northeast Queens.

Once I layered my data on my map, I noticed a couple of things.

First, the majority of local bus routes in this part of Queens County go in the east to west direction. There should be more bus routes that go to Jamaica (red circle in middle of Queens) since Jamaica is the next biggest public transportation hub in Queens. In Jamaica, people have access to the rest of the LIRR that service the rest of Long Island. There are also more buses in Jamaica and subway service. Because buses go east to west, this is robbing the people of Northeast Queens affordable access to southern Queens and Brooklyn.
 
Second, bus routes pass through varying income levels. A bus route like the Q12  may start at tracts at a higher median income level and then midway pass through a lower median income level. 

Third, like median income, a bus route can pass through tracts with different poverty levels. One tract could have 4.5% below poverty level and the tract below the bus route can have 12.8% below poverty level. 

Northeast Queens is known to be a car dependent area. I believe having more bus routes going to souhtern Queens and Brooklyn will give residents other options instead of just taking their cars everyday. 

Ideally, the next steps for this project is to be able to do a survey in Northeast Queens and ask residents their opinions on how to better the local bus routes. Would the residents in Douglaston/Little Neck want a local bus route that goes to Jamaica like the Q44?

But I think I would want to see how many people actually use each stop in Northeast Queens. I think this would be an interesting analysis if I could get a day's worth data for each stop. 


<iframe src="/indexbus.html" height="705px" width="920px" style="border: 1px solid #464646;" allowfullscreen="" allow="autoplay"> </iframe>

Data Sources:

* [MTA Bus Data](http://web.mta.info/developers/developer-data-terms.html#data)
* [tidycensus R package for RStudio](https://walker-data.com/tidycensus/)
* [Northeast Queens data was made up of neighborhoods in NTA dataset](https://data.cityofnewyork.us/City-Government/2020-Neighborhood-Tabulation-Areas-NTAs-Mapped/4hft-v355)


