# 예제 C.4 특정 필드의 fragment_size 설정이 글로벌 설정보다 우선한다

curl localhost:9200/get-together/event/_search?pretty -d '{
  "query": {
    "match": {
      "description": "elasticsearch logstash kibana"
    }
  },
  "highlight": {
    "fragment_size": 20,
    "fields": {
      "title": {},
      "description": {
        "fragment_size": "40"
      }
    }
  }
}'
# 응답
#       "highlight" : {
#         "description" : [ "dive for what <em>Elasticsearch</em> is and how it", "logging with <em>Logstash</em> as well as <em>Kibana</em>!" ],
#         "title" : [ "Logging and <em>Elasticsearch</em>" ]
#       }
# [...]
#       "highlight" : {
#         "description" : [ "together and talk about <em>Logstash</em> - http://logstash", "with a sneak peek at <em>Kibana</em>" ],
#         "title" : [ "<em>Elasticsearch</em> and <em>Logstash</em>" ]
#       }
# [...]
#       "highlight" : {
#         "description" : [ "how they use <em>Elasticsearch</em>" ],
#         "title" : [ "<em>Elasticsearch</em> at" ]
#       }
