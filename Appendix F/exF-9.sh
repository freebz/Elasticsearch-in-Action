# 예제 F.9 페이로드는 제안한 텍스트에 대해 검색하는 대신 문서를 얻도록 한다

curl -XPUT 'localhost:9200/autocomplete/_mapping/group' -d '{
"properties": {
  "name": {
    "type": "completion",
    "payloads": true
  }
}}'
curl -XPUT 'localhost:9200/autocomplete/group/3' -d '{
"name": {
  "input": "Elasticsearch San Francisco",
  "payload": {
    "groupId": 3
  }
}}'
curl 'localhost:9200/autocomplete/_suggest?pretty' -d '{
"name-autocomplete": {
  "text": "elastic",
  "completion": {
    "field": "name"
  }
}}'
# 응답
#     "options" : [ {
#       "text" : "Elasticsearch San Francisco",
#       "score" : 1.0,
#       "payload":{"groupId":3}
#     } ]
