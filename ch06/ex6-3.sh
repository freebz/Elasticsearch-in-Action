# 예제 6.3 그룹 유형의 이름 필드를 색인 시점에 강화

curl -XPUT 'localhost:9200/get-togehter' -d '{
  "mappings": {
    "group": {
      "properties": {
        "name": {
	  "boost": 2.0,
	  "type": "string"
	},
	...rest of the mappings...
      }
    }
  }
}'
