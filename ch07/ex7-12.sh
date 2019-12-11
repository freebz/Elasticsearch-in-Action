# 예제 7.12 날짜 범위 집계를 이용하여 이벤트를 이벤트 날짜로 나누어 표현

URI=localhost:9200/get-together/event/_search
curl "$URI?pretty&search_type=count" -d '{
  "aggregations": {
    "dates_breakdown": {
      "date_range": {
        "field": "date",
	"format": "YYYY.MM",
      	"ranges": [
	  { "to": "2013.07" },
	  { "from": "2013.07"}
	]
      }
    }
  }
}'
### reply
#   "aggregations" : {
#     "dates_breakdown" : {
#       "buckets" : [ {
#         "key" : "*-2013.07",
#         "to" : 1.3726368E12,
#         "to_as_string" : "2013.07",
#         "doc_count" : 8
#       }, {
#         "key" : "2013.07-*",
#         "from" : 1.3726368E12,
#         "from_as_string" : "2013.07",
#         "doc_count" : 7
