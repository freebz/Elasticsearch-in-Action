# 예제 4.19 텀즈 쿼리로 다중 텀을 검색

curl 'localhost:9200/get-together/group/_search' -d '{
  "query": {
    "terms": {
      "tags": ["jvm", "hadoop"]
    }
  },
  "_source": ["name", "tags"]
}'


# {
#   ...
#     "hits" : [
#       {
#         "_id" : "1",
# 	"_index" : "get-together",
# 	"_score" : 0.33779633,
# 	"_type" : "group",
# 	"_source": {
# 	  "name":"Denver Clojure",
# 	  "tags": [
# 	    "clojure",
# 	    "denver",
# 	    "functional programming",
# 	    "jvm",
# 	    "java"
# 	  ]
# 	}
#       },
#       {
#         "_id" : "4",
# 	"_index" : "get-together",
# 	"_score" : 0.22838624,
# 	"_type" : "group",
# 	"_source": {
# 	  "name":"Boulder/Denver big data get-together",
# 	  "tags": [
# 	    "big data",
# 	    "data visualization",
# 	    "open source",
# 	    "cloud computing",
# 	    "hadoop"
# 	  ]
# 	}
#       }
#   ...
# }
