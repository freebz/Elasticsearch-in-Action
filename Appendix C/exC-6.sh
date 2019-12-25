# 예제 C.6 하이라이트 쿼리는 주 쿼리와 리스토어 쿼리의 텀들을 포함한다

curl localhost:9200/get-together/group/_search?pretty -d '{
  "query" : {
    "match" : {
      "name" : "elasticsearch search"
    }
  },
  "rescore" : {
    "window_size": 200,
    "query" : {
      "rescore_query" : {
        "wildcard" : {
	  "tags.verbatim" : "*search"
	}
      }
    }
  },
  "highlight": {
    "highlight_query": {
      "query_string": {
        "query": "name:elasticsearch name:search tags.verbatim:*search"
      }
    },
    "fields": {
      "name": {},
        "tags.verbatim": {}
    }
  }
}'
# reply
#       "highlight" : {
#         "name" : [ "<em>Elasticsearch</em> Denver" ],
#         "tags.verbatim" : [ "<em>elasticsearch</em>" ]
#       }
# [...]
#       "highlight" : {
#         "name" : [ "Enterprise <em>search</em> London get-together" ],
#         "tags.verbatim" : [ "<em>enterprise search</em>" ]
#       }
