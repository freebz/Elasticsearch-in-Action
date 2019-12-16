# 예제 9.10 커스텀 라우팅 값으로 문서를 색인하기

curl -XPOST 'localhost:9200/get-together/group/10?routing=denver' -d'
{
  "name": "Denver Ruby",
  "description": "The Denver Ruby Meetup"
}'

curl -XPOST 'localhost:9200/get-togehter/group/11?routing=boulder' -d'
{
  "name": "Boulder Ruby",
  "description": "Boulderies that use Ruby"
}'

curl -XPOST 'localhost:9200/get-together/group/12?routing=amsterdam' -d'
{
  "name": "Amsterdam Devs that use Ruby",
  "description": "Mensen die genieten van het gebruik van Ruby"
}'
