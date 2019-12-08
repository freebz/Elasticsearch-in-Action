# 예제 5.3 분석 API를 사용한 예제

curl -XPOST 'localhost:9200/_analyze?analyzer=standard' -d 'share your experience with NoSql & big data technologies'

# {
#   "tokens" : [ {
#     "token" : "share",
#     "start_offset" : 0,
#     "end_offset" : 5,
#     "type" : "<ALPHANUM>",
#     "position" : 1
#   }, {
#     "token" : "your",
#     "start_offset" : 6,
#     "end_offset" : 10,
#     "type" : "<ALPHANUM>",
#     "position" : 2
#   }, {
#     "token" : "experience",
#     "start_offset" : 11,
#     "end_offset" : 21,
#     "type" : "<ALPHANUM>",
#     "position" : 3
#   }, {
#     "token" : "with",
#     "start_offset" : 22,
#     "end_offset" : 26,
#     "type" : "<ALPHANUM>",
#     "position" : 4
#   }, {
#     "token" : "nosql",
#     "start_offset" : 27,
#     "end_offset" : 32,
#     "type" : "<ALPHANUM>",
#     "position" : 5
#   }, {
#     "token" : "big",
#     "start_offset" : 35,
#     "end_offset" : 38,
#     "type" : "<ALPHANUM>",
#     "position" : 6
#   }, {
#     "token" : "data",
#     "start_offset" : 39,
#     "end_offset" : 43,
#     "type" : "<ALPHANUM>",
#     "position" : 7
#   }, {
#     "token" : "technologies",
#     "start_offset" : 44,
#     "end_offset" : 56,
#     "type" : "<ALPHANUM>",
#     "position" : 8
#   } ]
# }
