# 예제 6.9 설명 API를 이용한 문서를 찾을 수 없는 원인 찾기

curl -XPOST 'localhost:9200/get-together/group/4/_explain' -d '{
  "query": {
    "match": {
      "description": "elasticsearch"
    }
  }
}'
# {
#   "_id" : "4",
#   "_index" : "get-together",
#   "_type" : "group",
#   "explanation" : {
#     "description" : "no matching term",
#     "value" : 0.0
#   },
#   "matched" : false
# }
