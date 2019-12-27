# 예제 E.6 일치하는 쿼리 메타데이터와 텀 통계를 얻기 위해 집계 사용하기

curl -XPUT 'localhost:9200/shop' -d '{
  "mappings": {
    "items": {
      "properties": {
        "name": { "type": "string" }
      }
    },
    ".percolator": {
      "properties": {
        "query": { "type": "object", "enabled": true }
      }
    }
  }
}'
curl -XPUT 'localhost:9200/shop/.percolator/1' -d '{
  "query": {
    "match": {
      "name": "cheap PC Linux"
    }
  }
}'
curl -XPUT 'localhost:9200/shop/.percolator/2' -d '{
  "query": {
    "match": {
      "name": "cheap PC"
    }
  }
}'
curl -XPUT 'localhost:9200/shop/.percolator/3' -d '{
  "query": {
    "match": {
      "name": "Mac Pro latest"
    }
  }
}'
curl 'localhost:9200/shop/items/_percolate/count?pretty' -d '{
  "doc": {
    "name": "PC with preinstalled Linux"
  },
  "aggs": {
    "top_query_terms": {
      "terms": { "field": "query.match.name" }
    }
  }
}'
