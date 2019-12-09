# 예제 6.15 복잡한 스크립트를 이용한 점수 계산

curl -XPOST 'localhost:9200/get-together/event/_search?pretty' -d '{
  "query": {
    "function_score": {
      "query": {
        "match": {
	  "description": "elasticsearch"
	}
      },
      "functions": [{
        "script_score": {
	  "script": "Math.log(doc['attendees'].values.size() * myweight)",
	  "params": {
	    "myweight": 3
	  }
	}
      }],
      "boost_mode": "replace"
    }
  }
}'
