# 예제 7.16 top hits 집계를 이용하여 결과를 묶어서 보여줌

URI=localhost:9200/get-together/event/_search
curl "$URI?pretty&search_type=count" -d '{
  "aggregations": {
    "frequent_attendees": {
      "terms": {
        "field": "attendees",
	"size": 2
      },
      "aggregations": {
        "recent_events": {
	  "top_hits": {
	    "sort": {
	      "date": "desc"
	    },
	    "_source": {
	      "include": [ "title" ]
	    },
	    "size": 1
	  }
	}
      }
    }
}}'
### reply
#   "aggregations" : {
#     "frequent_attendees" : {
#       "buckets" : [ {
#         "key" : "lee",
#         "doc_count" : 5,
#         "recent_events" : {
#           "hits" : {
#             "total" : 5,
#             "max_score" : 1.0,
#             "hits" : [ {
#               "_index" : "get-together",
#               "_type" : "event",
#               "_id" : "100",
#               "_score" : 1.0,
#               "_source":{"title":"Liberator and Immutant"},
#               "sort" : [ 1378404000000 ]
#             } ]
#           }
#         }
#       }, {
#         "key" : "shay",
#         "doc_count" : 4,
#         "recent_events" : {
#           "hits" : {
#             "total" : 4,
# [...]
#               "_source":{"title":"Piggyback on Elasticsearch training in San Francisco"},
# [...]
