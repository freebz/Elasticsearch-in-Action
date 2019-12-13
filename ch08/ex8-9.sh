# 예제 8.9 부모와 자식 집계 결합하기

curl "localhost:9200/get-together/_search?pretty" -d '{
  "aggs": {
    "top-tags": {
      "terms": {
        "field": "tags.verbatim"
      },
      "aggs": {
        "to-events": {
	  "children": {
	    "type": "event"
	  },
	  "aggs": {
	    "frequent-attendees": {
	      "terms": {
	        "field": "attendees"
	      }
	    }
	  }
	}
      }
    }
  }
}'

### 응답
#   "aggregations" : {
#     "top-tags" : {
#       "buckets" : [ {
#         "key" : "big data",
#         "doc_count" : 3,
#         "to-events" : {
#           "doc_count" : 9,
#           "frequent-attendees" : {
#             "buckets" : [ {
#               "key" : "andy",
#               "doc_count" : 3
#             }, {
#               "key" : "greg",
#               "doc_count" : 3
# [...]
#         "key" : "open source",
#         "doc_count" : 3,
#         "to-events" : {
#           "doc_count" : 9,
#           "frequent-attendees" : {
#             "buckets" : [ {
#               "key" : "shay",
#               "doc_count" : 4
#             }, {
#               "key" : "andy",
#               "doc_count" : 3
# [...]
