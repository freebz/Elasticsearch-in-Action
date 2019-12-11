# 예제 7.13 각 이벤트의 참석자 정보를 히스토그램 집계로 표현하기

URI=localhost:9200/get-together/event/_search
curl "$URI?pretty&search_type=count" -d '{
  "aggregations": {
    "attendees_histogram": {
      "histogram": {
        "script": "doc['"'attendees'"'].values.length",
	"interval": 1
      }
    }
}}'
### reply
#   "aggregations" : {
#     "attendees_histogram" : {
#       "buckets" : [ {
#         "key" : 3,
#         "doc_count" : 4
#       }, {
#         "key" : 4,
#         "doc_count" : 9
#       }, {
#         "key" : 5,
#         "doc_count" : 2
