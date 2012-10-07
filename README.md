Web Service to pull data from beeradvocate.com
========

**Deployed to:** [http://damp-mesa-4600.herokuapp.com/](http://damp-mesa-4600.herokuapp.com/)

### Sample Client Application ###

There is a very simple Javascript-based client application that is available at [http://damp-mesa-4600.herokuapp.com/client](http://damp-mesa-4600.herokuapp.com/client).

### Usage ###

Currently, the application can retrieve the current beer lists available on BeerAdvocate.com.  The beer list detail contains the beers on that list.  Some of the beer details are also available - beer name (which includes brewery), the reviewers rating and the rating from the Astrom brothers.

#### Available methods: ####

##### GET /lists  
Returns JSON array of beer lists.  Each item in the JSON array includes:

**id**: Beer list identifier  
**name**: Beer list name  

##### GET /lists/[id]   
Returns JSON array of beers on a particular list.  The particular list is identified by the *id* parameter.

Return values for each element in array:  
**id**: Beer identifier  
**name**: Beer name  

##### GET /beers/[id]   
Returns details of the specific beer with JSON formatting.

Required:  
**id**: Beer identifier  

Returns:  
**beer_name**: Name of the beer along with brewery name  
**reviewers_rating**: Beer rating as determined by user-submitted reviews  
**brothers_rating**: If the Alstrom brothers have reviewed this particular beer, a numerical score is returned.  Otherwise, "N/A" is returned.

