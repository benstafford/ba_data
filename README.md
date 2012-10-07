Web Service to pull data from beeradvocate.com
========

**Requirements**
* Use Rails.
* Pick any data-heavy site that interests you but does not currently have a public API. (stock quotes, baseball scores, etc.)
* Scrape the target site on each request.
* Include documentation for how to use your web service.
* Deploy the service to Heroku

### Usage ###

Currently, the application can retrieve the current beer lists available on BeerAdvocate.com.  The beer list detail contains the beers on that list.  Some of the beer details are also available - beer name (which includes brewery), the reviewers rating and the rating from the Astrom brothers.

#### Available methods: ####

##### GET /lists #####  
Returns JSON array of beer lists.  Each item in the JSON array includes:

**id**: Beer list identifier  
**name**: Beer list name  

##### GET /lists/<id> #####  
Returns JSON array of beers on a particular list.  The particular list is identified by the *id* parameter.

Return values for each element in array:  
**id*: Beer identifier  
**name**: Beer name  

##### GET /beers/<id>#####  
Returns details of the specific beer with JSON formatting.

Required:  
**id**: Beer identifier  

Returns:  
**beer_name**: Name of the beer along with brewery name  
**reviewers_rating**: Beer rating as determined by user-submitted reviews  
**brothers_rating**: If the Alstrom brothers have reviewed this particular beer, a numerical score is returned.  Otherwise, "N/A" is returned.
