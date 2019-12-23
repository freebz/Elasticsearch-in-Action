# 예제 11.2 동적 매핑 추가하기

curl -XPUT 'localhost:9200/first_index' -d '{
  "mappings": {
    "person": {
      "dynamic": "strict",
      "properties": {
        "email": { "type": "string" },
	"created_date": { "type": "date" }
      }
    }
  }
}'

curl -XPUT 'localhost:9200/second_index' -d '{
  "mappings": {
    "person": {
      "dynamic": "true",
      "properties": {
        "email": { "type": "string" },
	"created_date": { "type": "date" }
      }
    }
  }
}'
