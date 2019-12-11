# 예제 7.3 이벤트 참석자의 수를 가져오기 위해 stats 호출

URI=localhost:9200/get-together/event/_search
curl "$URI?pretty&search_type=count" -d '{
  "aggregations": {
    "attendees_stats": {
      "stats": {
        "script": "doc['"'attendees'"'].values.length"
      }
    }
  }
}'
### reply
# [...]
#   "aggregations" : {
#     "attendees_stats" : {
#       "count" : 15,
#       "min" : 3.0,
#       "max" : 5.0,
#       "avg" : 3.8666666666666667,
#       "sum" : 58.0
#     }
#   }
# }
