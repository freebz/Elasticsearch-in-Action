# 예제 11.4 새 저장소 정의하기

curl -XPUT 'localhost:9200/_snapshot/my_repository' -d '
{
  "type": "fs",
  "settings": {
    "location": "smb://share/backups",
    "compress": true,
    "max_snapshot_bytes_per_sec": "20mb",
    "max_restore_bytes_per_sec": "20mb",
  }
}'
