# 예제 3.2 기존 필드 타입을 string에서 long으로 변경 시도는 실패한다

curl -XPUT 'localhost:9200/get-together/_mapping/new-events' -d '{
  "new-events": {
    "properties": {
      "host": {
        "type": "long"
      }
    }
  }
}'

# reply
# {"error":"MergeMappingException[Merge failed with failures {[mapper [host]
# of different type, current_type [string], merged_type [long]]}]","status":400}
