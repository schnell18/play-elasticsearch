curl -XGET 'localhost:9200/_analyze?pretty' \
     -H'Content-Type: application/json' \
     -d'
 {
   "analyzer": "standard",
   "text":"2015-5-3"
 }
'

curl -XGET 'localhost:9200/_analyze?pretty' \
     -H'Content-Type: application/json' \
     -d'
 {
   "analyzer": "standard",
   "text":"You and I do always want the language!"
 }
'
