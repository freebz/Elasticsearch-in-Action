# 예제 F.3 하이라이팅과 동작하는 구 제안자

curl localhost:9200/get-together/_suggest?pretty -d '{
  "dym-attendees": {
    "text": "abut using elasticsearch",
    "phrase": {
      "field": "description",
      "highlight": {
        "pre_tag": "<em>",
	"post_tag": "</em>"
      }
    }
  }
}'
# 응답 스니팻
#   "dym-attendees" : [ {
#     "text" : "abut using elasticsearch",
#     "offset" : 0,
#     "length" : 24,
#     "options" : [ {
#       "text" : "about using elasticsearch",
#       "highlighted" : "<em>about</em> using elasticsearch",
#       "score" : 0.007828596
#     } ]
#   } ]
