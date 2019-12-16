# 예제 9.7 앨리어스를 추가하고 제거하기

curl -XPOST 'localhost:9200/_aliases' -d'
{
  "actions": [
    {
      "add": {
        "index": "get-together",
	"alias": "gt-alias"
      }
    },
    {
      "remove": {
        "index": "old-get-together",
	"alias": "gt-alias"
      }
    }
  ]
}'
