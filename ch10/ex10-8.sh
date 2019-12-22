# 예제 10.8 색인 생성 시점에 워머를 등록하기

curl -XPUT 'localhost:9200/hot_index' -d '{
  "warmers": {
    "date_sorting": {
      "types": [],
      "source": {
        "sort": [
	  {
	    "date": {
	      "order": "desc"
	    }
	  }
	]
      }
    }
  }
}'
