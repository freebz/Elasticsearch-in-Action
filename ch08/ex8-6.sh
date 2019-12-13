# 예제 8.6 다수준 중첩 도큐먼트를 색인하고 검색하기

curl -XPUT localhost:9200/get-together/group-multinested/1 -d '{
  "name": "Elasticsearch News",
  "members": {
    "first_name": "Radu",
    "last_name": "Gheorghe",
    "comments": {
      "date": "2013-12-22",
      "comment": "hello world"
    }
  }
}'

curl 'localhost:9200/get-together/group-multinested/_search' -d '{
  "query": {
    "nested": {
      "path": "members.comments",
      "query": {
        "term": {
	  "members.comments.comment": "hello"
	}
      }
    }
  }
}'
