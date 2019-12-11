# 예제 7.4 이벤트별 평균 참석자 수 구하기

URI=localhost:9200/get-together/event/_search
curl "$URI?pretty&search_type=count" -d '{
  "aggregations": {
    "attendees_avg": {
      "avg": {
        "script": "doc['"'attendees'"'].values.length"
      }
    }
  }
}'
### reply
# [...]
#   "aggregations" : {
#     "attendees_avg" : {
#       "value" : 3.8666666666666667
#     }
#   }
# }
