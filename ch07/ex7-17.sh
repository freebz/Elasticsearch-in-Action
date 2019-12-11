# 예제 7.17 Global 집계는 질의와 관계없이 전체 상위 태그를 보는 데 도움을 줌

URI=localhost:9200/get-together/group/_search
curl "$URI?pretty&search_type=count" -d '{
  "query": {
    "match": {
      "name": "elasticsearch"
    }
  },
  "aggregations": {
    "all_documents": {
      "global": {},
      "aggregations": {
        "top_tags": {
	  "terms": {
	    "field": "tags.verbatim"
	  }
	}
      }
    }
}}'
### reply
# [...]
#   "hits" : {
#     "total" : 2,
#     "max_score" : 0.0,
# [...]
#   "aggregations" : {
#     "all_documents" : {
#       "doc_count" : 5,
#       "top_tags" : {
#         "doc_count_error_upper_bound" : 0,
#         "sum_other_doc_count" : 6,
#         "buckets" : [ {
#           "key" : "big data",
#           "doc_count" : 3
# [...]
