curl -X GET "localhost:9200/bank/_search?scroll=1m&pretty" \
     -H 'Content-Type: application/json' \
     -d'
{
  "query": { "match_all": {} },
  "sort": ["_doc"],
  "size": 300
}
'

