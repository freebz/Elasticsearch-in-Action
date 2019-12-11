# 예제 7.2 Denber 그룹에서 상위 태그 가지고 오기

curl 'localhost:9200/get-together/group/_search?pretty' -d '{
  "query": {
    "match": {
      "location": "Denver"
    }
  },
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
#     "total" : 2,
#     "max_score" : 1.44856,
#     "hits" : [ {
# [...]
#   "name": "Denver Clojure",
# [...]
#   "name": "Elasticsearch Denver",
# [...]
#   },
#   "aggregations" : {
#     "top_tags" : {
#       "buckets" : [ {
#         "key" : "denver",
# 	"doc_count" : 2
#       }, {
# 	"key" : "big data",
# 	"doc_count" : 1
# [...]
