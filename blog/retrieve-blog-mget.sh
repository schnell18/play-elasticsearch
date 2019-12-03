curl -XGET "localhost:9200/_mget?pretty" \
     -H 'Content-Type: application/json' \
     -d'
{
   "docs" : [
      {
         "_index" : "blog",
         "_type" :  "blog",
         "_id" :    10000
      },
      {
         "_index" : "blog",
         "_type" :  "blog",
         "_id" :    1000
      }
   ]
}
'

curl -XGET "localhost:9200/blog/_doc/_mget?pretty" \
     -H 'Content-Type: application/json' \
     -d'
{
   "ids" : [ "1000", "1001", "10000" ]
}
'
