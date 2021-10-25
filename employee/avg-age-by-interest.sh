curl -X GET "localhost:9200/megacorp/employee/_search?pretty" \
     -H "Content-Type: application/json" \
     -d'
{
  "aggs": {
    "all_interests": {
      "terms": { "field": "interests.keyword" },
      "aggs": {
        "avg_age": { "avg": { "field": "age" }}
      }
    }
  }
}
'
