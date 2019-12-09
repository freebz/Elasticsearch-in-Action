# 예제 6.2 BM25 유사도 고급 설정

curl -XPOST 'localhost:9200/myindex' -d '{
  "settings": {
    "index": {
      "analysis": {...},
      "similarity": {
        "my_custom_similarity": {
	  "type": "BM25",
	  "k1": 1.2,
	  "b": 0.75,
	  "discount_overlaps": false
	}
      }
    }
  },
  "mappings": {
    "mytype": {
      "properties": {
        "title": {
	  "type": "string",
	  "similarity": "my_custom_similarity"
	}
      }
    }
  }
}'
