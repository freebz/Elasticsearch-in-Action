# 예제 C.3 Highlighting only fields matching the query

curl localhost:9200/get-together/event/_search?pretty -d '{
  "query": {
    "match": {
      "title": "elasticsearch"
    }
  },
  "highlight": {
    "require_field_match": true,
    "fields": {
      "title": {},
      "description": {}
    }
  }
}'
# 응답
#       "highlight" : {
#         "title" : [ "Logging and <em>Elasticsearch</em>" ]
#       }
# [...]
#       "highlight" : {
#         "title" : [ "<em>Elasticsearch</em> and Logstash" ]
#       }
