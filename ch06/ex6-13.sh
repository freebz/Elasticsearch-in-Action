# 예제 6.13 두 개의 가중치 함수 지정

curl -XPOST 'localhost:9200/get-together/_search?pretty' -d '{
  "query": {
    "function_score": {
      "query": {
        "match": {
	  "description": "elasticsearch"
	}
      },
      "functions": [{
        "weight": 2,
	"filter": {
	  "term": {
	    "description": "hadoop"
	  }
	}
      }, {
        "weight": 3,
	"filter": {
	  "term": {
	    "description": "logstash"
	  }
	}
      }]
    }
  }
}'
