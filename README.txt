
MarkLogic Search API jQuery Plugin

This is a demonstration of a jQuery plugin developed to use the MarkLogic Search API from client-side programming via JavaScript. Using this allows a developer to pass
search terms from a textbox, which calls the MarkLogic Search API. The results are returned in JSON format and loaded into a list. 

Installation/Configuration

- Install MarkLogic Server 4.1 - available at http://developer.marklogic.com/products

- Create an HTTP server, pointing the root to the root dir of the 'src' folder of this project. For instance, 
  if the project code is downloaded to 'C:\projects\marklogic-search-js\src', that will be your root.
  
- Point the database of your HTTP server to any database with XML content.


Usage

- Open a browser and point it to the project http://localhost:<port>/main.xqy

- Enter a search term (that you know is in your content) and click the Search button.

- Search results will render in a list below the search box.


Explaination of code

- main.xqy: html structure for the page, loads js
- main.js: this loads everything in the jQuery $(document).ready. $("#searchbox").searchAPI() calls the jQuery plugin, passing the text contained
  in the search box.
- marklogic-search-api.js: jQuery plugin that calls the Search API service, parsing the JSON results returned and loading them into a list.
- services/search-api-service.xqy: this XQuery module takes the search term string passed from the jQuery module, passes it to the search:search() function
  of the Search API, and uses JSON libs to return the search results in a JSON format.


Notes

This is a proof-of-concept to show the usage of JSON for developing a web application with the MarkLogic Search API. The current feature set exposed is limited. Future
iterations planned will include facets, among other stuff.

