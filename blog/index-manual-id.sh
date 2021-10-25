curl -X PUT "localhost:9200/blog/blog/123" \
     -H 'Content-Type: application/json' \
     -d'
{
  "title": "My first blog entry",
  "text": "Just trying this out...",
  "date": "2014/01/01"
}
'
