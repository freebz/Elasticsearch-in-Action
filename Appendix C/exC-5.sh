# 예제 C.5 사용자 지정 하이라이팅 태그

curl localhost:9200/get-together/event/_search?pretty -d '{
  "query": {
    "match": {
      "title": "elasticsearch"
    }
  },
  "highlight": {
    "pre_tags" : ["<b>"],
    "post_tags" : ["</b>"],
    "fields": {
      "title": {}
    }
  }
}'
# 응답
#       "highlight" : {
#         "title" : [ "<b>Elasticsearch</b> at Rangespan and Exonar" ]
#       }
