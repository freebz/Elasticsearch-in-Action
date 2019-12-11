# 예제 7.9 "search" 단어를 포함하는 버킷만 생성

URI=localhost:9200/get-together/group/_search
curl "$URI?pretty&search_type=count" -d '{
  "aggregations": {
    "tags": {
      "terms": {
        "field": "tags.verbatim",
	"include": ".*search.*"
      }
    }
}}'
### reply
#   "aggregations" : {
#     "tags" : {
#       "buckets" : [ {
#         "key" : "elasticsearch",
#         "doc_count" : 2
#       }, {
#         "key" : "enterprise search",
#         "doc_count" : 1
#       } ]
#     }
#   }
# }
