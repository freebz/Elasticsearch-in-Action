# 예제 4.1 URL에서 검색 범위 제한하기

curl 'localhost:9200/_search' -d '...'
curl 'localhost:9200/get-together/_search' -d '...'
curl 'localhost:9200/get-together/event/_search' -d '...'
curl 'localhost:9200/_all/event/_search' -d '...'
curl 'localhost:9200/*/event/_search' -d '...'
curl 'localhost:9200/get-together,other/event,group/_search' -d '...'
curl 'localhost:9200/+get-toge*,-get-together/_search' -d '...'
