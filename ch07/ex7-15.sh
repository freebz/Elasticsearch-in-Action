# 예제 7.15 다중 버킷 집계를 3번 중첩

URI=localhost:9200/get-together/group/_search
curl "$URI?pretty&search_type=count" -d '{
  "aggregations": {
    "top_tags": {
      "terms": {
        "field": "tags.verbatim"
      },
      "aggregations": {
        "groups_per_month": {
	  "date_histogram": {
	    "field": "created_on",
	    "interval": "1M"
	  },
	  "aggregations": {
	    "number_of_members": {
	      "range": {
	        "script": "doc['"'members'"'].values.length",
		"ranges": [
		  { "to": 3 },
		  { "from": 3 }
		]
	      }
	    }
	  }
	}
      }
    }
  }
}'
### reply
#   "aggregations" : {
#     "top_tags" : {
#       "buckets" : [ {
#         "key" : "big data",
#         "doc_count" : 3,
#         "groups_per_month" : {
#           "buckets" : [ {
#             "key_as_string" : "2010-04-01",
#             "key" : 1270080000000,
#             "doc_count" : 1,
#             "number_of_members" : {
#               "buckets" : [ {
#                 "key" : "*-3.0",
#                 "to" : 3.0,
#                 "to_as_string" : "3.0",
#                 "doc_count" : 1
#               }, {
#                 "key" : "3.0-*",
#                 "from" : 3.0,
#                 "from_as_string" : "3.0",
#                 "doc_count" : 0
#               } ]
#             }
#           }, {
#             "key_as_string" : "2012-08-01",
# [...]
