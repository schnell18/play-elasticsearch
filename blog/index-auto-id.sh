curl -X POST "localhost:9200/blog/blog" \
     -H 'Content-Type: application/json' \
     -d'
{
  "title": "My second blog entry",
  "text": "Still trying this out...",
  "date": "2014/01/01"
}
'
