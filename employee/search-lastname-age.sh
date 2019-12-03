curl -X GET "localhost:9200/megacorp/employee/_search?pretty" \
     -H "Content-Type: application/json" \
     -d'
{
  "query": {
    "bool": {
      "filter": {
        "range": {
          "age": {"gt": 30}
        }
      },
      "must": {
        "match": {
          "last_name": "Smith"
        }
      }
    }
  }
}
'

# curl -X GET "localhost:9200/megacorp/employee/_search?pretty" \
#      -H "Content-Type: application/json" \
#      -d'
# {
#   "query": {
#     "filtered": { # no longer supported since ES 5.0
#       "filter": {
#         "range": {
#           "age": {"gt": 30}
#         }
#       },
#       "query": {
#         "match": {
#           "last_name": "Smith"
#         }
#       }
#     }
#   }
# }
# '

