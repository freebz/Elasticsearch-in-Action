# 예제 10.9 텀 빈도만을 명시한 스크립트 점수

curl 'localhost:9200/get-together/event/_search?pretty' -d '{
  "query": {
    "function_score": {
      "filter": {
        "term": {
	  "title": "elasticsearch"
	}
      },
      "functions": [
        {
	  "script_score": {
	    "script": "_index[\"title\"][\"elasticsearch\"].tf()+_index["\description\"][\"elasticsearch\"].tf()",
	    "lang": "groovy"
	  }
	}
      ]
    }
  }
}'
