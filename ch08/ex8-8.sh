# 예제 8.8 Denver의 일래스틱서치 이벤트를 찾는 has_parent 쿼리

curl 'localhost:9200/get-together/event/_search?pretty' -d '{
  "query": {
    "bool": {
      "must": [
        {
	  "term": {
	    "title": "elasticsearch"
	  }
	},
	{
	  "has_parent": {
	    "type": "group",
	    "query": {
	      "term": {
	        "location": "denver"
	      }
	    }
	  }
        }
      ]
    }
  }
}'
