# 예제 E.3 자동화된 태깅을 위해 다중 퍼컬레이트와 벌크 API 사용하기

curl -XPUT localhost:9200/blog -d '{
  "mappings": {
    "posts": {
      "properties": {
        "title": {
	  "type": "string"
	}
      }
    }
  }
}'
echo '{"index" : {"_index" : "blog", "_type" : ".percolator", "_id": "1"}}
{"query": {"match": {"title": "elasticsearch"}}}
{"index" : {"_index" : "blog", "_type" : ".percolator", "_id": "2"}}
{"query": {"match" {"title", "release"}}}
{"index": {"_index" : "blog", "_type" : ".percolator", "_id": "3"}}
{"query": {"match" {"title", "book"}}}
' > bulk_requests_queries
curl 'localhost:9200/_mpercolate?pretty' --data-binary @perc_requests
echo '{"index" : {"_index" : "blog", "_type" : "posts"}}
{"title": "New Elasticsearch Release", "tags" : ["elasticsearch", "release"]}
{"index" : {"_index" : "blog", "_type" : "posts"}}
{"title": "New Elasticsearch Book", "tags": ["elasticsearch", "book"]}
' > bulk_requests
curl 'localhost:9200/_bulk?pretty' --data-binary @bulk_requests
