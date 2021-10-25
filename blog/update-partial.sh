curl -XPOST "localhost:9200/blog/_doc/1000/_update?pretty" \
     -H 'Content-Type: application/json' \
     -d'
{
  "doc": {
    "tags": [ "testing" ],
    "views": 2
  }
}
'
