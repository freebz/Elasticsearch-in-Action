# 예제 E.4 컨텐츠로 쿼리 필터링하기

curl -XPUT 'localhost:9200/smart-percolate' -d '{
  "mappings": {
    "event": {
      "properties": {
        "title": { "type": "string" }
      }
    },
    ".percolator": {
      "properties": {
        "query": { "type": "object", "enabled": true }
      }
    }
  }
}'
curl -XPUT 'localhost:9200/smart-percolate/.percolator/1' -d '{
  "query": {
    "match": {
      "title": "Elasticsearch Aggregations"
    }
  }
}'
curl 'localhost:9200/smart-percolate/event/_percolate?pretty' -d '{
  "doc": {
    "title": "Nesting Elasticsearch Aggregations"
  },
  "filter": {
    "query": {
      "match": {
        "query.match.title": "Elasticsearch"
      }
    }
  }
}'
