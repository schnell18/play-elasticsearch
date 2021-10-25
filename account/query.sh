curl -X GET "localhost:9200/bank/_search?pretty" \
     -H 'Content-Type: application/json'
     -d'
{
  "query": { "match_all": {} },
  "sort": [
    { "account_number": "asc" }
  ]
}
'

