# 예제 10.4 일래스틱서치에 관련된 이벤트와 그룹을 조회하기 위한 멀티서치 요청

echo '{"index" : "get-together", "type": "group"}
{"query" : {"match" : {"name": "elasticsearch"}}}
{"index" : "get-together", "type": "event"}
{"query" : {"match" : {"title": "elasticsearch"}}}
' > request
curl localhost:9200/_msearch?pretty --data-binary @request
# 응답
# {
#   "responses" : [ {
#     "took" : 4,
# [...]
#       "hits" : [ {
#         "_index" : "get-together",
#         "_type" : "group",
#         "_id" : "2",
#         "_score" : 1.7091256,
#         "_source":{
#   "name": "Elasticsearch Denver",
# [...]
#   }, {
#     "took" : 7,
# [...]
#       "hits" : [ {
#         "_index" : "get-together",
#         "_type" : "event",
#         "_id" : "103",
#         "_score" : 1.1118877,
#         "_source":{
#   "host": "Lee",
#   "title": "Introduction to Elasticsearch",
#   [...]
