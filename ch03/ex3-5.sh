# 예제 3.5 스크립트를 이용해서 변경하기

curl -XPUT 'localhost:9200/online-shop/shirts/1' -d '
{
  "caption": "Learning Elasticsearch",
  "price": 15
}'

curl -XPOST 'localhost:9200/online-shop/shirts/1/_update' -d '{
  "script": "ctx._source.price += price_diff",
  "params": {
    "price_diff": 10
  }
}'
