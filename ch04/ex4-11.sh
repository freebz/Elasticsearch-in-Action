# 예제 4.11 검색 요청 및 응답 예

curl 'localhost:9200/_search?q=title:elasticsearch&_source=title,date'
# {
#   "took" : 2,
#   "timed_out" : false,
#   "_shards" : {
#     "total" : 2,
#     "successful" : 2,
#     "failed" : 0
#   },
#   "hits" : {
#     "total" : 7,
#     "max_score" : 0.9904146,
#     "hits" : [{
#       "_index" : "get-together",
#       "_type" : "event",
#       "_id" : "103",
#       "_score" : 0.9904146,
#       "_source": {
# 	"date":"2013-04-17T19:00",
# 	"title":"Introduction to Elasticsearch"
#       }
#     },
#     {
#       "_index" : "get-together",
#       "_type" : "event",
#       "_id" : "105",
#       "_score" : 0.9904146,
#       "_source": {
# 	"date":"2013-07-17T18:30",
# 	"title":"Elasticsearch and Logstash"
#       }
#     },
#     ...
#     ]
#   }
# }
