# 예제 6.14 field_value_factor를 function_score 질의 안에 사용하기

curl -XPOST 'localhost:9200/get-together/event/_search?pretty' -d'{
  "query": {
    "function_score": {
      "query": {
        "match": {
	  "description": "elasticsearch"
	}
      },
      "functions": [{
        "field_value_factor": {
	  "field": "reviews",
	  "factor": 2.5,
	  "modifier": "ln"
	}
      }]
    }
  }
}'
