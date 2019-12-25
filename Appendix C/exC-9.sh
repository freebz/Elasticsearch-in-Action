# 예제 C.9 포스팅 하이라이터는 모든 텀을 일치시키고 구를 무시한다

curl -XPUT localhost:9200/test-postings/docs/2 -d '{
  "content": "Elasticsearch intro - first you get an intro of the core concepts, then we move on to the advanced stuff" }'
curl localhost:9200/test-postings/_search?pretty -d '{
  "query": {
    "match_phrase": {
      "content": "Elasticsearch intro"
    }
  },
  "highlight": {
    "encoder": "html",
    "fields": {
      "content": {}
    }
  }
}'
# 응답
#       "highlight" : {
#         "content" : [ "<em>Elasticsearch</em> <em>intro</em> - first you get an <em>intro</em> of the core concepts, then we move on to the advanced stuff" ]
#       }
curl localhost:9200/test-postings/_search?pretty -d '{
  "query": {
    "match_phrase": {
      "content": "Elasticsearch intro"
    }
  },
  "highlight": {
    "encoder": "html",
    "fields": {
      "content": {
        "type": "plain"
      }
    }
  }
}'
# 응답
#       "highlight" : {
#         "content" : [ "<em>Elasticsearch</em> <em>intro</em> - first you get an <em>intro</em> of the core concepts, then we move on to the advanced stuff" ]
#       }
