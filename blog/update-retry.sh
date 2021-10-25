curl -XPOST "localhost:9200/blog/_doc/10000/_update?retry_on_conflict=5&pretty" \
     -H 'Content-Type: application/json' \
     -d'
{
  "script": "ctx._source.views+=1",
  "upsert": {
    "views": 1
  }
}
'
