# 예제 6.21 매핑을 이용하여 제목 필드에 문서 값 사용하기

curl -XPOST 'localhost:9200/myindex' -d '{
  "mappings": {
    "document": {
      "properties": {
        "title": {
	  "type": "string",
	  "index": "not_analyzed",
	  "doc_values": true
	}
      }
    }
  }
}'
