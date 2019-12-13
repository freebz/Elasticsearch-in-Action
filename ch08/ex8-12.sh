# 예제 8.12 비정규화한 데이터 쿼리로 중복 결과 반복

curl -XPUT 'localhost:9200/get-together/member/10002?parent=1' -d '{
  "first_name": "Radu",
  "last_name": "Gheorghe"
}'

curl -XPUT 'localhost:9200/get-together/member/10002?parent=2' -d '{
  "first_name": "Radu",
  "last_name": "Gheorghe"
}'

curl -XPOST 'localhost:9200/get-together/_refresh'

curl 'localhost:9200/get-together/member/_search?pretty' -d '{
  "query": {
    "term": {
      "first_name": "radu"
    }
  }
}'

# reply
#     "hits" : [ {
#       "_index" : "get-together",
#       "_type" : "member",
#       "_id" : "10002",
#       "_score" : 3.3978953,
#       "_source":{
#   "first_name": "Radu",
#   "last_name": "Gheorghe"
# }
#     }, {
#       "_index" : "get-together",
#       "_type" : "member",
#       "_id" : "10002",
#       "_score" : 2.7047482,
#       "_source":{
#   "first_name": "Radu",
#   "last_name": "Gheorghe"
# }
#     } ]
