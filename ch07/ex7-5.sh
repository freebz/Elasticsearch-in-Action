# 예제 7.5 이벤트 참석자 수의 추가 통계 정보 구하기

URI=localhost:9200/get-together/event/_search
curl "$URI?pretty&search_type=count" -d '{
  "aggregations": {
    "attendees_extended_stats": {
      "extended_stats": {
        "script": "doc['"'attendees'"'].values.length"
      }
    }
  }
}'
### reply
#   "aggregations" : {
#     "attendees_extended_stats" : {
#       "count" : 15,
#       "min" : 3.0,
#       "max" : 5.0,
#       "avg" : 3.8666666666666667,
#       "sum" : 58.0,
#       "sum_of_squares" : 230.0,
#       "variance" : 0.38222222222222135,
#       "std_deviation" : 0.6182412330330462
#     }
#   }
# }
