# 예제 2.2 그룹에서 "elasticsearch" 검색

curl "localhost:9200/get-together/group/_search?\
q=elasticsearch\
&fields=name,location\
&size=1\
&pretty"
