# 예제 7.10 Lee와 유사한 이벤트에 참가한 참석자 찾기

URI=localhost:9200/get-together/event/_search
curl "$URI?pretty&search_type=count" -d '{
  "query": {
    "match": {
      "attendees": "lee"
    }
  },
  "aggregations": {
    "significant_attendees": {
      "significant_terms": {
        "field": "attendees",
	"min_doc_count": 2,
	"exclude": "lee"
      }
    }
}}'
### reply
#   "aggregations" : {
#     "significant_attendees" : {
#       "doc_count" : 5,
#       "buckets" : [ {
#         "key" : "greg",
#         "doc_count" : 3,
#         "score" : 1.92,
#         "bg_count" : 3
#       }, {
#         "key" : "mike",
#         "doc_count" : 2,
#         "score" : 1.2800000000000002,
#         "bg_count" : 2
#       }, {
#         "key" : "daniel",
#         "doc_count" : 2,
#         "score" : 0.7200000000000002,
#         "bg_count" : 3
