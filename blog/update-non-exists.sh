curl -XPOST "localhost:9200/blog/_doc/10000/_update?pretty" \
     -H 'Content-Type: application/json' \
     -d'
{
  "script": "ctx._source.views+=1",
  "upsert": {
    "views": 1
  }
}
'
