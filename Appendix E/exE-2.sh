# 예제 E.2 기존 그룹 문서를 퍼콜레이트하기

curl -XPUT 'localhost:9200/get-together/.percolator/2' -d '{
  "query": {
    "match": {
      "name": "elasticsearch"
    }
  }
}'
curl 'localhost:9200/get-together/group/2/_percolate?pretty'
