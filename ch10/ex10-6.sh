# 예제 10.6 비트셋 필터를 불 필터로 결합하여 and/or/not 필터 안에서 사용하기

curl localhost:9200/get-together/group/_search?pretty -d'{
  "query": {
    "filtered": {
      "filter": {
        "and": [
	  {
	    "bool": {
	      "should": [
	        {
		  "term": {
		    "tags.verbatim": "elasticsearch"
		  }
		},
		{
		  "term": {
		    "members": "lee"
		  }
		}
	      ]
	    }
	  },
	  {
	    "script": {
	      "script": "doc[\"members\"].values.length > minMembers",
	      "params": {
	        "minMembers": 2
	      }
	    }
	  }
	]
      }
    }
  }
}'
