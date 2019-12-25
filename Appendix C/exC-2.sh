# 예제 C.2 no_match_size로 하이라이터가 필요한 필드를 반환하도록 강제하기

curl localhost:9200/get-together/event/_search?pretty -d '{
  "query": {
    "match": {
      "title": "elasticsearch"
    }
  },
  "highlight": {
    "no_match_size": 100,
    "fields": {
      "title": {},
      "description": {}
    }
  },
  "_source": false
}'
# reply
#     "hits" : [ {
#       "_index" : "get-together",
#       "_type" : "event",
#       "_id" : "103",
#       "_score" : 1.1118877,
#       "highlight" : {
#         "description" : [ "can meet and greet and I will present on some <em>Elasticsearch</em> basics and how we use it." ],
#         "title" : [ "Introduction to <em>Elasticsearch</em>" ]
#       }
# [...]
#       "highlight" : {
#         "description" : [ "We can get together and talk about Logstash - http://logstash.net with a sneak peek at Kibana" ],
