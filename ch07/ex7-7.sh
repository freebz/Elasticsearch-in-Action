# 예제 7.7 카디널리티 집계를 이용하여 유일한 사용자 정보 구하기

URI=localhost:9200/get-together/group/_search
curl "$URI?pretty&search_type=count" -d '{
  "aggregations": {
    "members_cardinality": {
      "cardinality": {
        "field": "members"
      }
    }
}}'
### reply
#   "aggregations" : {
#     "members_cardinality" : {
#       "value" : 8
#     }
#   }
# }
