# 코드 5.5 Ngram 분석

curl -XPOST 'localhost:9200/ng' -d'{
  "settings": {
    "number_of_shards": 1,
    "number_of_replicas": 0,
    "index": {
      "analysis": {
        "analyzer": {
	  "ng1": {
	    "type": "custom",
	    "tokenizer": "standard",
	    "filter": ["reverse", "ngf1", "reverse"]
	  }
	},
      	"filter": {
	  "ngf1": {
	    "type": "edgeNgram",
	    "min_gram": 2,
	    "max_gram": 6
	  }
	}
      }
    }
  }
}'

curl -XPOST 'localhost:9200/ng/_analyze?analyzer=ng1' -d'spaghetti'

# {
#   "tokens" : [ {
#     "token" : "ti",
#     "start_offset" : 0,
#     "end_offset" : 9,
#     "type" : "word",
#     "position" : 1
#   }, {
#     "token" : "tti",
#     "start_offset" : 0,
#     "end_offset" : 9,
#     "type" : "word",
#     "position" : 1
#   }, {
#     "token" : "etti",
#     "start_offset" : 0,
#     "end_offset" : 9,
#     "type" : "word",
#     "position" : 1
#   }, {
#     "token" : "hetti",
#     "start_offset" : 0,
#     "end_offset" : 9,
#     "type" : "word",
#     "position" : 1
#   }, {
#     "token" : "ghetti",
#     "start_offset" : 0,
#     "end_offset" : 9,
#     "type" : "word",
#     "position" : 1
#   } ]
# }
