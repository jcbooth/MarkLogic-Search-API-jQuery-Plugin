xquery version "1.0-ml";

import module namespace json = "http://marklogic.com/json" at "../lib/json-lib.xqy";
import module namespace json-utils = "http://marklogic.com/json-utils" at "../lib/json-utils-lib.xqy";
import module namespace search = "http://marklogic.com/appservices/search"
    at "/MarkLogic/appservices/search/search.xqy";
    
let $q := xdmp:get-request-field("q")
return json:serialize(json-utils:search-results-json(search:search($q)))