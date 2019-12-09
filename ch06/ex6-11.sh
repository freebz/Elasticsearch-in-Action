# 예제 6.11 Function_score 질의의 기본 구조

curl -XPOST 'localhost:9200/get-together/_search?pretty' -d '{
  "query": {
    "function_score": {
      "query": {
        "match": {
	  "description": "elasticsearch"
	}
      },
      "functions": []
    }
  }
}'
