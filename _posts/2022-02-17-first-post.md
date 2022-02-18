---
layout: post
title: Local Bus in Northeast Queens
subtitle: Buses and demography in NE Queens
cover-img: /assets/img/path.jpg
thumbnail-img: /assets/img/thumb_busstops_012022.png
share-img: /assets/img/path.jpg
tags: [bus, queens, nyc, gis, first post]
---
This is my first post on my "website"!

I had the privilege to attend TRB 2022 conference in Washington DC mid-January 2022 and I learned so much about equity in transportation. I know that New York City has been focusing in equity in the last couple of years but for a personal project, I wanted to focus on equity in one public transit desert of NYC and that is in Northeast Queens. Northeast Queens has no subway line but residents have access to bus routes (both local and express) and a rail line, the LIRR. These services (all provided by the MTA) have different fares to go to Manhattan:

1. local bus fare = $2.75 (one way)
2. express bus fare = $6.75 (one way)
3. LIRR = Off Peak fare = $7.75 (one way) and Peak fare = $10.75 (one way)

For this project right now, I focused on the local bus routes. I took the local bus data from the MTA website and mapped the bus stops to make sure I was mapping the current bus stops. I also used RStudio to download shapefiles with census data that I wanted my web map to have. I used tidycensus, which is a R package, in RStudio to process the ACS 2019 data for population, median income, and percent poverty. I used Queens County census data and didn't clip the census data to the Northeast Queens.

Once I layered my data on my map, I noticed a couple of things.

First, the majority of local bus routes in this part of Queens County go in the east to west direction. There should be more bus routes that go to Jamaica (red circle in middle of Queens) since Jamaica is the next biggest public transportation hub in Queens. In Jamaica, people have access to the rest of the LIRR that service the rest of Long Island. There are also more buses in Jamaica and subway service. Because buses go east to west, this is robbing the people of Northeast Queens affordable access to southern Queens and Brooklyn.
 
Second, bus routes pass through varying income levels. A bus route like the Q12  may start at tracts at a higher median income level and then midway pass through a lower median income level. 

Third, like median income, a bus route can pass through tracts with different poverty levels. One tract could have 4.5% below poverty level and the tract below the bus route can have 12.8% below poverty level. 

Northeast Queens is known to be a car dependent area. I believe having more bus routes going to souhtern Queens and Brooklyn will give residents other options instead of just taking their cars everyday. 

Ideally, the next steps for this project is to be able to do a survey in Northeast Queens and ask residents their opinions on how to better the local bus routes. Would the residents in Douglaston/Little Neck want a local bus route that goes to Jamaica like the Q44?

But I think I would want to see how many people actually use each stop in Northeast Queens. I think this would be an interesting analysis if I could get a day's worth data for each stop. 


<iframe src="mtabuswebapp/indexbus.html" height="1200px" width="1200px" frameborder="0" allowfullscreen="true"> </iframe>

Data Sources:

* [MTA Bus Data](http://web.mta.info/developers/developer-data-terms.html#data)
* [tidycensus R package for RStudio](https://walker-data.com/tidycensus/)
* [Northeast Queens data was made up of neighborhoods in NTA dataset](https://data.cityofnewyork.us/City-Government/2020-Neighborhood-Tabulation-Areas-NTAs-Mapped/4hft-v355)


