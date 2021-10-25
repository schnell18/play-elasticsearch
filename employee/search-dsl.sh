curl -X GET "localhost:9200/megacorp/employee/_search?pretty" \
     -H "Content-Type: application/json" \
     -d'
{
  "query": {
    "match": {
      "last_name": "Smith"
    }
  }
}
'

