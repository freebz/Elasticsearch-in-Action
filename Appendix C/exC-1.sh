# 예제 C.1 두 필드에서 텀을 하이라이팅하기

curl localhost:9200/get-together/event/_search?pretty -d '{
  "query": {
    "match": {
      "title": "elasticsearch"
    }
  },
  "highlight": {
    "fields": {
      "title": {},
      "description": {}
    }
  }
}'
# 응답
#     "hits" : [ {
#       "_index" : "get-together",
#       "_type" : "event",
#       "_id" : "103",
#       "_score" : 1.1118877,
#       "_source":{
#   "host": "Lee",
#   "title": "Introduction to Elasticsearch",
#   "description": "An introduction to ES and each other. We can meet and greet and I will present on some Elasticsearch basics and how we use it.",
# [...]
#       "highlight" : {
#         "description" : [ "can meet and greet and I will present on some <em>Elasticsearch</em> basics and how we use it." ],
#         "title" : [ "Introduction to <em>Elasticsearch</em>" ]
#       }
# [...]
#   "title": "Elasticsearch and Logstash",
#   "description": "We can get together and talk about Logstash - http://logstash.net with a sneak peek at Kibana",
# [...]
#       "highlight" : {
#         "title" : [ "<em>Elasticsearch</em> and Logstash" ]
#       }
