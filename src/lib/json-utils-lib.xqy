xquery version "1.0-ml";

module namespace json-utils = "http://marklogic.com/json-utils";

import module namespace search = "http://marklogic.com/appservices/search"
    at "/MarkLogic/appservices/search/search.xqy";

declare function json-utils:search-results-json($results as element()*) as node()* {
  for $i in $results
  return 
    typeswitch ($i)
      case element(search:response)
        return element response {(
                element total{fn:string($i/@total)}, 
                element start {fn:string($i/@start)},
                element page-length {fn:string($i/@page-length)},
                json-utils:search-results-json($i/element()))
              }
      case element(search:result)
        return element result {(
                element index {fn:string($i/@index)}, 
                element uri {fn:string($i/@uri)},
                json-utils:search-results-json($i/element()))
              }
      case element(search:snippet)
        return element snippet {(
                element text {fn:data($i/search:match)},
                for $highlight in $i/search:match/search:highlight
                return
                element highlight {fn:string($highlight)},
                json-utils:search-results-json($i/element()))
             }                     
      default return ()
};