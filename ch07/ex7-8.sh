# 예제 7.8 태그 버킷을 이름순으로 정렬

URI=localhost:9200/get-together/group/_search
curl "$URI?pretty&search_type=count" -d '{
  "aggregations": {
    "tags": {
      "terms": {
        "field": "tags.verbatim",
	"order": {
	  "_term": "asc"
	}
      }
    }
}}'
### reply
#   "aggregations" : {
#     "tags" : {
#       "buckets" : [ {
#         "key" : "apache lucene",
#         "doc_count" : 1
#       }, {
#         "key" : "big data",
#         "doc_count" : 3
#       }, {
#         "key" : "clojure",
#         "doc_count" : 1
