curl -XGET 'localhost:9200/tweet/_analyze?pretty' \
     -H'Content-Type: application/json' \
     -d'
 {
   "field": "tweet",
   "text":"Black-cats"
 }
'

curl -XGET 'localhost:9200/tweet/_analyze?pretty' \
     -H'Content-Type: application/json' \
     -d'
 {
   "field": "tag",
   "text":"Black-cats"
 }
'
