# 예제 7.6 이벤트 참석자 수의 80번째, 99번째 백분위 값 구하기

URI=localhost:9200/get-together/event/_search
curl "$URI?pretty&search_type=count" -d '{
  "aggregations": {
    "attendees_percentiles": {
      "percentiles": {
        "script": "doc['"'attendees'"'].values.length",
	"percents": [80, 99]
      }
    }
  }
}'
### reply
#   "aggregations" : {
#     "attendees_percentiles" : {
#       "values" : {
#         "80.0" : 4.0,
#         "99.0" : 5.0
#       }
#     }
#   }
# }
