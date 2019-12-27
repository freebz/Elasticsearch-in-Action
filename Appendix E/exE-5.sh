# 예제 E.5 메타데이터 값으로 등록한 쿼리 정렬하기

curl -XPUT 'localhost:9200/blog-ad/' -d '{
  "mappings": {
    "posts": {
      "properties": {
        "text": {
	  "type": "string"
	}
      }
    }
  }
}'
curl -XPUT 'localhost:9200/blog-ad/.percolator/1' -d '{
  "query": {
    "match": {
      "text": "new cars"
    }
  },
  "ad_price": 5.4
}'
curl -XPUT 'localhost:9200/blog-ad/.percolator/2' -d '{
  "query": {
    "match": {
      "text": "used cars"
    }
  },
  "ad_price": 2.1
}'
curl 'localhost:9200/blog-ad/posts/_percolate?pretty' -d '{
  "doc": {
    "text": "This post is about cars"
  },
  "query": {
    "function_score": {
      "field_value_factor": {
        "field": "ad_price"
      }
    }
  },
  "size": 5,
  "sort": "_score"
}'
