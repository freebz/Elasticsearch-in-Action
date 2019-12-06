# 예제 4.17 텀 쿼리 예제

curl 'localhost:9200/get-together/group/_search' -d '{
  "query": {
    "term": {
      "tags": "elasticsearch"
    }
  },
  "_source": ["name", "tags"]
}'

# {
#   ...
#     "hits" : [ {
#       "_id" : "3",
#       "_index" : "get-together",
#       "_score" : 1.0769258,
#       "_type" : "group",
#       "_source": {
# 	"name":"Elasticsearch San Francisco",
# 	"tags":[
# 	  "elasticsearch",
# 	  "big data",
# 	  "lucene",
# 	  "open source"
# 	]
#       }
#     },
#     {
#       "_id" : "2",
#       "_index" : "get-together",
#       "_score" : 0.8948604,
#       "_type" : "group",
#       "_source": {
# 	"name":"Elasticsearch Denver",
# 	"tags":[
# 	  "denver",
# 	  "elasticsearch",
# 	  "big data",
# 	  "lucene",
# 	  "solr"
# 	]
#       }
#     }
#   ],
#   ...
# }
