# 예제 8.5 중첩 쿼리 예제

curl 'localhost:9200/get-together/group-nested/_search?pretty' -d '{
  "query": {
    "nested": {
      "path": "members",
      "query": {
        "bool": {
	  "must": [
	    {
	      "term": {
	        "members.first_name": "lee"
	      }
	    },
	    {
	      "term": {
	        "members.last_name": "gheorghe"
	      }
	    }
	  ]
	}
      }
    }
  }
}'
