# 예제 10.5 _mget 종단점과 색인, 타입, 문서의 ID를 포함한 문서 배열

curl localhost:9200/_mget?pretty -d '{
  "docs": [
    {
      "_index": "get-together",
      "_type": "group",
      "_id": "1"
    },
    {
      "_index": "get-together",
      "_type": "group",
      "_id": "2"
    }
  ]
}'

# 응답
# {
#   "docs" : [ {
#     "_index" : "get-together",
#     "_type" : "group",
#     "_id" : "1",
#     "_version" : 1,
#     "found" : true,
#     "_source":{
# 	"name": "Denver Clojure",
# 	[...]
#     },
#   {
#     "_index" : "get-together",
#     "_type" : "group",
#     "_id" : "2",
#     "_version" : 1,
#     "found" : true,
#     "_source":{
# 	"name": "Elasticsearch Denver",
# 	[...]
#     }
