# 예제 8.4 다수준 중첩이 있을 때 include_in_parent 사용

curl -XPUT localhost:9200/get-together/_mapping/group-multinested -d '{
  "group-multinested": {
    "properties": {
      "name": {
        "type": "string"
      },
      "members": {
        "type": "nested",
	"properties": {
	  "first_name": {
	    "type": "string"
	  },
	  "last_name": {
	    "type": "string"
	  },
	  "comments": {
	    "type": "nested",
	    "include_in_parent": true,
	    "properties": {
	      "date": {
	        "type": "date",
		"format": "dateOptionalTime"
	      },
	      "comment": {
	        "type": "string"
	      }
	    }
	  }
	}
      }
    }
  }
}'
