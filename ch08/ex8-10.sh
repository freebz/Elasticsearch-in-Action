# 예제 8.10 비정규화한 member 색인

curl -XPUT 'localhost:9200/get-together/_mapping/member' -d '{
  "member": {
    "_parent": {
      "type": "group"
    },
    "properties": {
      "first_name": {
        "type": "string"
      },
      "last_name": {
        "type": "string"
      }
    }
  }
}'

curl -XPUT 'localhost:9200/get-together/member/10001?parent=1' -d '{
  "first_name": "Matthew",
  "last_name": "Hinman"
}'

curl -XPUT 'localhost:9200/get-together/member/10001?parent=2' -d '{
  "first_name": "Matthew",
  "last_name": "Hinman"
}'
