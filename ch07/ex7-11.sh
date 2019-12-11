# 예제 7.11 범위 집계를 사용하여 이벤트의 참석자 수로 표현하기

URI=localhost:9200/get-together/event/_search
curl "$URI?pretty&search_type=count" -d '{
  "aggregations": {
    "attendees_breakdown": {
      "range": {
        "script": "doc['"'attendees'"'].values.length",
	"ranges": [
	  { "to": 4 },
	  { "from": 4, "to": 6 },
	  { "from": 6 }
	]
      }
    }
}}'
### reply
#   "aggregations" : {
#     "attendees_breakdown" : {
#       "buckets" : [ {
#         "key" : "*-4.0",
#         "to" : 4.0,
#         "to_as_string" : "4.0",
#         "doc_count" : 4
#       }, {
#         "key" : "4.0-6.0",
#         "from" : 4.0,
#         "from_as_string" : "4.0",
#         "to" : 6.0,
#         "to_as_string" : "6.0",
#         "doc_count" : 11
#       }, {
#         "key" : "6.0-*",
#         "from" : 6.0,
#         "from_as_string" : "6.0",
#         "doc_count" : 0
