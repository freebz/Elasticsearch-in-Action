# 예제 4.18 텀 필터 예제

curl 'localhost:9200/get-together/_search' -d '{
  "query": {
    "filtered": {
      "query": {
        "match_all": {}
      },
      "filter": {
        "term": {
	  "tags": "elasticsearch"
	}
      }
    }
  },
  "_source": ["name", "tags"]
}'

# {
#   ...
#     "hits" : [
#       {
# 	"_id" : "3",
# 	"_index" : "get-together",
# 	"_score" : 1.0,
# 	"_type" : "group",
# 	"_source": {
# 	  "name":"Elasticsearch San Francisco",
# 	  "tags": [
# 	    "elasticsearch",
# 	    "big data",
# 	    "lucene",
# 	    "open source"
# 	  ]
# 	}
#       },
#       {
# 	"_id" : "2",
# 	"_index" : "get-together",
# 	"_score" : 1.0,
# 	"_type" : "group",
# 	"_source": {
# 	  "name":"Elasticsearch Denver",
# 	  "tags": [
# 	    "denver",
# 	    "elasticsearch",
# 	    "big data",
# 	    "lucene",
# 	    "solr"
# 	  ]
# 	}
#       }
#     ]
#   ...
# }
