# 예제 10.3 색인, 문서 생성, 갱신, 삭제 작업을 포함하는 벌크

REQUESTS_FILE=/tmp/test_bulk
echo '{"index":{}}
{"title":"Elasticsearch Bucharest"}
{"create":{}}
{"title":"Big Data in Romania"}
{"update":{"_id": "11"}}
{"doc":{"created_on" : "2014-05-06"} }
{"delete":{"_id": "10"}}
' > $REQUESTS_FILE
URL='localhost:9200/get-together/group'
curl -XPOST $URL/_bulk?pretty --data-binary @$REQUESTS_FILE
# 예상 응답
# {
#   "took" : 3055,
#   "errors" : false,
#   "items" : [ {
#     "create" : {
#       "_index" : "get-together",
#       "_type" : "group",
#       "_id" : "AW8PdbD-oFIJB4MPWKNj",
#       "_version" : 1,
#       "status" : 201
#     }
#   }, {
#     "create" : {
#       "_index" : "get-together",
#       "_type" : "group",
#       "_id" : "AW8PdbD-oFIJB4MPWKNk",
#       "_version" : 1,
#       "status" : 201
#     }
#   }, {
#     "update" : {
#       "_index" : "get-together",
#       "_type" : "group",
#       "_id" : "11",
#       "_version" : 2,
#       "status" : 200
#     }
#   }, {
#     "delete" : {
#       "_index" : "get-together",
#       "_type" : "group",
#       "_id" : "10",
#       "_version" : 2,
#       "status" : 200,
#       "found" : true
#     }
#   } ]
# }
