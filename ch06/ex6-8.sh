# 예제 6.8 전송 내용에 설명설정을 하는 방법

curl -XPOST 'localhost:9200/get-together/_search?pretty' -d '{
  "query": {
    "match": {
      "description": "elasticsearch"
    }
  },
  "explain": true
}'
