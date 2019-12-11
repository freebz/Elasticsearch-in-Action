# 예제 7.18 필터 집계는 질의로부터 오는 문서로 제한

URI=localhost:9200/get-together/event/_search
curl "$URI?pretty&search_type=count" -d '{
  "query": {
    "match": {
      "title": "elasticsearch"
    }
  },
  "aggregations": {
    "since_july": {
      "filter": {
        "range": {
	  "date": {
	    "gt": "2013-07-01T00:00"
	  }
	}
      },
      "aggregations": {
        "description_cloud": {
	  "terms": {
	    "field": "description"
	  }
	}
      }
    }
}}'
### reply
# [...]
#   "hits" : {
#     "total" : 7,
# [...]
#   "aggregations" : {
#     "since_july" : {
#       "doc_count" : 2,
#       "description_cloud" : {
#         "buckets" : [ {
#           "key" : "we",
#           "doc_count" : 2
#         }, {
#           "key" : "with",
#           "doc_count" : 2
# [...]
