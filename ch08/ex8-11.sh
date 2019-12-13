# 예제 8.11 비정규화한 member 변경하기

curl 'localhost:9200/get-together/member/_search?pretty' -d '{
  "query": {
    "filtered": {
      "filter": {
        "term": {
	  "_id": "10001"
	}
      }
    }
  },
  "fields": [
    "_parent"
  ]
}'

curl -XPOST 'localhost:9200/get-together/member/10001/_update?parent=1' -d '{
  "doc": {
    "first_name": "Lee"
  }
}'

curl -XPOST 'localhost:9200/get-together/member/10001/_update?parent=2' -d '{
  "doc": {
    "first_name": "Lee"
  }
}'
