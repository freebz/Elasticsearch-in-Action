# 예제 5.6 Shingle 토큰 필터 예제

curl -XPOST 'localhost:9200/shingle' -d '{
  "settings": {
    "index": {
      "analysis": {
        "analyzer": {
	  "shingle1": {
	    "type": "custom",
	    "tokenizer": "standard",
	    "filter": [
	      "shingle-filter"
	    ]
	  }
	},
	"filter": {
	  "shingle-filter": {
	    "type": "shingle",
	    "min_shingle_size": 2,
	    "max_shingle_size": 3,
	    "output_unigrams": false
	  }
	}
      }
    }
  }
}'

curl -XPOST 'localhost:9200/shingle/_analyze?analyzer=shingle1' -d 'foo bar baz'

# {
#   "tokens" : [ {
#     "token" : "foo bar",
#     "start_offset" : 0,
#     "end_offset" : 7,
#     "type" : "shingle",
#     "position" : 1
#   }, {
#     "token" : "foo bar baz",
#     "start_offset" : 0,
#     "end_offset" : 11,
#     "type" : "shingle",
#     "position" : 1
#   }, {
#     "token" : "bar baz",
#     "start_offset" : 4,
#     "end_offset" : 11,
#     "type" : "shingle",
#     "position" : 2
#   } ]
# }
