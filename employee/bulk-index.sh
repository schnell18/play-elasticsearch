curl -H "Content-Type: application/json" \
     -XPOST "localhost:9200/megacorp/employee/_bulk?pretty&refresh" \
     --data-binary "@employees.json"
curl "localhost:9200/_cat/indices?v"
