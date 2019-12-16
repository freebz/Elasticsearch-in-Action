# 예제 9.11 쿼리 시점에 라우팅을 함께 사용하기

curl -XPOST 'localhost:9200/get-together/group/_search?routing=denver,amsterdam' -d'
{
  "query": {
    "match": {
      "name": "ruby"
    }
  }
}'
# {
#   ...
#   "hits" : {
#     "total" : 2,
#     "max_score" : 1.5414606,
#     "hits" : [ {
#       "_index" : "get-together",
#       "_type" : "group",
#       "_id" : "10",
#       "_score" : 1.5414606,
#       "_source": {
# 	  "name": "Denver Ruby",
# 	  "description": "The Denver Ruby Meetup"
#       }
#     }, {
#       "_index" : "get-together",
#       "_type" : "group",
#       "_id" : "12",
#       "_score" : 1.0790224,
#       "_source": {
# 	  "name": "Amsterdam Devs that use Ruby",
# 	  "description": "Mensen die genieten van het gebruik van Ruby"
#       }
#     } ]
#   }
# }
