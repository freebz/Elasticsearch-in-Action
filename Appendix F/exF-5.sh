# 예제 F.5 제안을 위한 더 좋은 랭킹을 얻기 위해 싱글 필드 사용하기

curl -XPUT localhost:9200/shop2 -d '{
  "settings": {
    "analysis": {
      "filter": {
        "shingle": {
	  "type": "shingle",
	  "min_shingle_size": 2,
	  "max_shingle_size": 3
	}
      },
      "analyzer": {
        "shingler": {
	  "type": "custom",
	  "tokenizer": "standard",
	  "filter": ["lowercase", "shingle"]
	}
      }
    }
  },
  "mappings": {
    "products": {
      "properties": {
        "product": {
	  "type": "string",
	  "fields": {
	    "shingled": {
	      "type": "string",
	      "analyzer": "shingler"
	    }
	  }
	}
      }
    }
  }
}'
curl -XPUT localhost:9200/shop2/products/1 -d '{
  "product": "iphone accessories"
}'
curl localhost:9200/shop2/_suggest?pretty -d '{
  "dym": {
    "text": "ifone accesorie",
    "phrase": {
      "field": "product.shingled",
      "max_errors": 2,
      "direct_generator": [{
        "field": "product"
      }]
    }
  }
}'
# 응답 스니펫
#   "text" : "iphone accessories",
#       "score" : 0.44569767
#   "text" : "ifone accessories",
#       "score" : 0.16785859
#   "text" : "iphone accesorie",
#       "score" : 0.14996736
