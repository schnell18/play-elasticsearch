curl -X GET "localhost:9200/tweet/_validate/query?pretty&explain" \
     -H 'Content-Type: application/json' \
     -d'
{
  "query": {
    "match" : {
      "tweet": "really powerful"
    }
  }
}
'

