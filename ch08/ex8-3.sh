# 예제 8.3 중첩 도큐먼트 매핑과 색인하기

curl -XPUT localhost:9200/get-together/_mapping/group-nested -d '{
  "group-nested": {
    "properties": {
      "name": {
        "type": "string"
      },
      "members": {
        "type": "nested",
	"properties": {
	  "first_name": {
	    "type": "string"
	  },
	  "last_name": {
	    "type": "string"
	  }
	}
      }
    }
  }
}'

curl -XPUT localhost:9200/get-together/group-nested/1 -d '{
  "name": "Elasticsearch News",
  "members": [
    {
      "first_name": "Lee",
      "last_name": "Hinman"
    },
    {
      "first_name": "Radu",
      "last_name": "Gheorghe"
    }
  ]
}'
