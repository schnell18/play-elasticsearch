curl -XDELETE 'localhost:9200/tweet?pretty'

curl 'localhost:9200/tweet/_mapping?pretty'

curl -XPUT 'localhost:9200/tweet?pretty' \
     -H 'Content-Type: application/json' \
     -d'
{
  "mappings": {
    "properties": {
      "tweet": {
        "type": "text",
        "analyzer": "english"
      },
      "date": {
        "type": "date"
      },
      "name": {
        "type": "text"
      },
      "user_id": {
        "type": "long"
      }
    }
  }
}
'

# curl -XPUT 'localhost:9200/tweet/_mapping?pretty' \
#      -H 'Content-Type: application/json' \
#      -d'
# {
#   "properties": {
#     "tag": {
#       "type": "string",
#       "index": "not_analyzed"
#     }
#   }
# }
# '

curl -XPUT 'localhost:9200/tweet/_mapping?pretty' \
     -H 'Content-Type: application/json' \
     -d'
{
  "properties": {
    "tag": {
      "type": "keyword",
      "index": true
    }
  }
}
'
