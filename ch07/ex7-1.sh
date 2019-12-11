# 예제 7.1 상위 태그를 가지고 오기 위해 terms aggregation 사용

curl 'localhost:9200/get-together/group/_search?pretty' -d '{
  "aggregations": {
    "top_tags": {
      "terms": {
        "field": "tags.verbatim"
      }
    }
  }
}'
### reply
# [...]
#   "hits" : {
#     "total" : 5,
#     "max_score" : 1.0,
#     "hits" : [ {
# [...]
#   "name": "Denver Clojure",
# [...]
#   "name": "Elasticsearch San Francisco",
#   },
# "aggregations" : {
#   "top_tags" : {
#     "buckets" : [ {
#       "key" : "big data",
#       "doc_count" : 3
#     }, {
#       "key" : "open source",
#       "doc_count" : 3
#     }, {
#       "key" : "denver",
#       "doc_count" : 2
#     }, {
#       "key" : "elasticsearch",
#       "doc_count" : 2
# [...]
#   }
# }
