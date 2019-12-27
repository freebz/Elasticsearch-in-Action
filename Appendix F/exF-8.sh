# 예제 F.8 가중치, 입력, 출력 사용하기

curl -XPUT 'localhost:9200/autocomplete' -d '{
"mappings": {
  "group": {
    "properties": {
      "tags": { "type": "completion" }
    }
  }
}}'
curl -XPUT 'localhost:9200/autocomplete/group/1' -d '{
"tags": {
  "input": ["big data", "data"],
  "output": "big data",
  "weight": 8
}}'
curl -XPUT 'localhost:9200/autocomplete/group/2' -d '{
"tags": {
  "input": ["data visualization", "visualization"],
  "output": "data visualization",
  "weight": 5
}}'
curl 'localhost:9200/autocomplete/_suggest?pretty' -d '{
"tags-autocomplete": {
  "text": "d",
  "completion": {
    "field": "tags"
  }
}}'
# 응답
#   "tags-autocomplete" : [ {
#     "text" : "d",
#     "offset" : 0,
#     "length" : 1,
#     "options" : [ {
#       "text" : "big data",
#       "score" : 8.0
#     }, {
#       "text" : "data visualization",
#       "score" : 5.0
#     } ]
#   } ]
