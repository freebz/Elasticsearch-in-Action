# 예제 9.6 _cat API를 통해 샤드 분포 확인하기

curl -XGET 'localhost:9200/_cat/allocation?v'
# shards disk.used disk.avail disk.total disk.percent host      ip        node     
#     53    37.6gb    117.7gb    155.3gb           24 ubuntu-16 127.0.1.1 Mister X 
#     52    37.6gb    117.7gb    155.3gb           24 ubuntu-16 127.0.1.1 Zombie   

curl -XGET 'localhost:9200/_cat/shards?v'
# get-together           0     p      STARTED   22 33.9kb 127.0.1.1 Mister X 
# get-together           0     r      STARTED   22 31.1kb 127.0.1.1 Zombie   
# get-together           1     p      STARTED   11 20.3kb 127.0.1.1 Mister X 
# get-together           1     r      STARTED   11 17.4kb 127.0.1.1 Zombie   
