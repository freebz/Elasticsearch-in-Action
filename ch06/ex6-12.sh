# 예제 6.12 문서 설명 필드에 "hadoop"이 있는 경우 가중치 함수를 이용해서 점수 증가시키기

curl -XPOST 'localhost:9200/get-together/_search?pretty' -d '{
  "query": {
    "function_score": {
      "query": {
        "match": {
	  "description": "elasticsearch"
	}
      },
      "functions": [{
        "weight": 1.5,
	"filter": {
	  "term": {
	    "description": "hadoop"
	  }
	}
      }]
    }
  }
}'
