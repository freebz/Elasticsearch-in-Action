# 예제 7.14 매달 발생한 이벤트를 히스토그램 집계로 표현

URI=localhost:9200/get-together/event/_search
curl "$URI?pretty&search_type=count" -d '{
  "aggregations": {
    "event_dates": {
      "date_histogram": {
        "field": "date",
	"interval": "1M"
      }
    }
}}'
### reply
#   "aggregations" : {
#     "event_dates" : {
#       "buckets" : [ {
#         "key_as_string" : "2013-02-01T00:00",
#         "key" : 1359676800000,
#         "doc_count" : 1
#       }, {
#         "key_as_string" : "2013-03-01T00:00",
#         "key" : 1362096000000,
#         "doc_count" : 1
#       }, {
#         "key_as_string" : "2013-04-01T00:00",
#         "key" : 1364774400000,
#         "doc_count" : 2
# [...]
