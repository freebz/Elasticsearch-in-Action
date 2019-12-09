# 예제 6.16 "random_score"를 사용하여 무작위로 문서 정렬

curl -XPOST 'localhost:9200/get-together/event/_search?pretty' -d '{
  "query": {
    "function_score": {
      "query": {
        "match": {
	  "description": "elasticsearch"
	}
      },
      "functions": [{
        "random_score": {
	  "seed": 1234
	}
      }]
    }
  }
}'
