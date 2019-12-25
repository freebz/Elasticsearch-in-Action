# 예제 C.7 분석 API가 오프셋을 알려준다

curl localhost:9200/_analyze?pretty -d 'Introduction to Elasticsearch'
# 응답
# {
#   "tokens" : [ {
#     "token" : "introduction",
#     "start_offset" : 0,
#     "end_offset" : 12,
#     "type" : "<ALPHANUM>",
#     "position" : 1
#   }, {
#     "token" : "to",
#     "start_offset" : 13,
#     "end_offset" : 15,
#     "type" : "<ALPHANUM>",
#     "position" : 2
#   }, {
#     "token" : "elasticsearch",
#     "start_offset" : 16,
#     "end_offset" : 29,
#     "type" : "<ALPHANUM>",
#     "position" : 3
#   } ]
# }
