# 예제 6.4 match 질의 중 부스팅

curl -XPOST 'localhost:9200/get-together/_search?pretty' -d '{
  "query": {
    "bool": {
      "should": [
        {
	  "match": {
	    "description": {
	      "query": "elasticsearch big data",
	      "boost": 2.5
	    }
	  }
	},
	{
	  "match": {
	    "name": {
	      "query": "elasticsearch big data"
	    }
	  }
        }
      ]
    }
  }
}'
