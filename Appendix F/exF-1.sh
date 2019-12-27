# 예제 F.1 멤버 오타를 수정하기 위해 텀 제안자 사용하기

curl localhost:9200/get-together/group/_search?pretty -d '{
  "query": {
    "match": {
      "members": "leee daneil"
    }
  },
  "suggest": {
    "dym-members": {
      "text": "leee daneil",
      "term": {
        "field": "members"
      }
    }
  }
}'
# 응답 스니팻
#   "hits" : {
#     "total" : 0,
#     "max_score" : null,
#     "hits" : [ ]
#   },
#   "suggest" : {
#     "dym-members" : [ {
#       "text" : "leee",
#       "offset" : 0,
#       "length" : 4,
#       "options" : [ {
#         "text" : "lee",
#         "score" : 0.6666666,
#         "freq" : 3
#       } ]
#     }, {
#       "text" : "daneil",
#       "offset" : 5,
#       "length" : 6,
#       "options" : [ {
#         "text" : "daniel",
#         "score" : 0.8333333,
#         "freq" : 1
#       } ]
#     } ]
