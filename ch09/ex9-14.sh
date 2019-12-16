# 예제 9.14 앨리어스와 라우팅을 함께 사용하기

curl -XPOST 'localhost:9200/_aliases' -d'
{
  "actions": [
    {
      "add": {
        "index": "get-together",
	"alias": "denver-events",
	"filter": {
	  "term": {
	    "name": "denver"
	  }
	},
	"routing": "denver"
      }
    }
  ]
}'
# {"acknowledged":true}

curl -XPOST 'localhost:9200/denver-events/_search?pretty' -d'
{
  "query": {
    "match_all": {}
  },
  "fields": [
    "name"
  ]
}'

# {
#   ...
#   "hits" : {
#     "total" : 3,
#     "max_score" : 1.0,
#     "hits" : [ {
#       "_index" : "get-together",
#       "_type" : "group",
#       "_id" : "2",
#       "_score" : 1.0,
#       "fields" : {
#         "name" : [ "Elasticsearch Denver" ]
#       }
#     }, {
#       "_index" : "get-together",
#       "_type" : "group",
#       "_id" : "4",
#       "_score" : 1.0,
#       "fields" : {
#         "name" : [ "Boulder/Denver big data get-together" ]
#       }
#     }, {
#       "_index" : "get-together",
#       "_type" : "group",
#       "_id" : "10",
#       "_score" : 1.0,
#       "fields" : {
#         "name" : [ "Denver Ruby" ]
#       }
#     } ]
#   }
# }
