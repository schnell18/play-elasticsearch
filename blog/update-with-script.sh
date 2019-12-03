curl -XPOST "localhost:9200/blog/_doc/1000/_update?pretty" \
     -H 'Content-Type: application/json' \
     -d'
{
  "script": "ctx._source.views+=1"
}
'

curl -XPOST "localhost:9200/blog/_doc/1000/_update?pretty" \
     -H 'Content-Type: application/json' \
     -d'
{
  "script": {
    "lang": "painless",
    "inline": "ctx._source.tags.add(params.tags)",
    "params": {
      "tags": "search"
    }
  }
}
'
