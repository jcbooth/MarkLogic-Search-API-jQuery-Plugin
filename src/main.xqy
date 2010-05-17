xquery version "1.0-ml";

xdmp:set-response-content-type("html"),

<html>
<head>
  <script type="text/javascript" src="js/jquery.js">*</script>
  <script type="text/javascript" src="js/jquery-ui-1.8.custom.min.js">*</script>
  <script type="text/javascript" src="js/jquery.corners.js">*</script>
  <script type="text/javascript" src="js/main.js">*</script>
  <script type="text/javascript" src="js/marklogic-search-api.js">*</script>
  
  <link rel="stylesheet" href="styles/app.css" />
  <link type="text/css" href="styles/ui-lightness/jquery-ui-1.8.custom.css" rel="stylesheet" />	  
</head>
<body>
  <div id="main">
  <h1>MarkLogic Search API jQuery Plugin Demo</h1>
  <div id="search" class="rounded">
    <input type="text" id="searchbox" class="search" value=""/>
    <span><a href="javascript:void(0)">Search</a></span>
  </div>
  <div id="results" class="rounded">
    <span>Search Results</span>
    <ul id="results-list"></ul>
  </div>
  </div>
</body>
</html>
