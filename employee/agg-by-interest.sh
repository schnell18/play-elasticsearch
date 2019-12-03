curl -X GET "localhost:9200/megacorp/employee/_search?pretty" \
     -H "Content-Type: application/json" \
     -d'
{
  "aggs": {
    "all_interests": {
      "terms": { "field": "interests.keyword" }
    }
  }
}
'

# curl -X GET "localhost:9200/megacorp/employee/_search?pretty" \
#      -H "Content-Type: application/json" \
#      -d'
# {
#   "aggs": {
#     "all_interests": {
#       "terms": { "field": "interests" }
#     }
#   }
# }
# '
#
# This produces:
#
#     Fielddata is disabled on text fields by default. Set fielddata=true on
#     [interests] in order to load fielddata in memory by uninverting the
#     inverted index. Note that this can however use significant memory.
#     Alternatively use a keyword field instead.
