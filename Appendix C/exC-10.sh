# 예제 C.10 플레인 하이라이터는 다중 필드와 잘 동작하지 않는다

curl -XPUT localhost:9200/multi -d '{
  "settings": {
    "analysis": {
      "analyzer": {
        "my-suffix": {
	  "tokenizer": "standard",
	  "filter": ["lowercase","suffix"]
	}
      },
      "filter": {
        "suffix": {
	  "type": "edgeNGram",
	  "min_gram": 5,
	  "max_gram": 5,
	  "side": "back"
	}
      }
    }
  },
  "mappings": {
    "event": {
      "properties": {
        "description": {
	  "type": "string",
	  "analyzer": "english",
	  "term_vector": "with_positions_offsets",
	  "fields": {
	    "suffix": {
	      "type": "string",
	      "analyzer": "my-suffix",
	      "term_vector": "with_positions_offsets"
	    }
	  }
	}
      }
    }
  }
}'

curl -XPUT localhost:9200/multi/event/1 -d '{
  "description": "elasticsearch is about searching"
}'
curl localhost:9200/multi/_refresh
curl -XGET localhost:9200/multi/event/_search -d'
{
  "query": {
    "multi_match": {
      "query": "search",
      "fields": ["description", "description.suffix"]
    }
  },
  "highlight": {
    "type": "plain",
    "fields": {
      "description": {},
      "description.suffix": {}
    }
  }
}'
# 응답
#       "highlight" : {
#         "description.suffix" : [ "<em>elasticsearch</em> is about searching" ],
#         "description" : [ "elasticsearch is about <em>searching</em>" ]
#       }
