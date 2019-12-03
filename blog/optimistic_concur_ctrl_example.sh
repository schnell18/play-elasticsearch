curl -i -XPUT "localhost:9200/blog/_doc/1000/_create?pretty" \
     -H 'Content-Type: application/json' \
     -d'
{
  "title": "My first blog entry",
  "text": "Just trying this out...",
  "date": "2014/01/01"
}
'
curl -i -XGET "localhost:9200/blog/_doc/1000?pretty"

curl -i -XPUT "localhost:9200/blog/_doc/1000?if_seq_no=10&if_primary_term=2&pretty" \
     -H 'Content-Type: application/json' \
     -d'
{
  "title": "My first blog entry",
  "text": "Starting to get the hang of this ..."
}
'

curl -i -XPUT "localhost:9200/blog/_doc/1000?if_seq_no=10&if_primary_term=2&pretty" \
     -H 'Content-Type: application/json' \
     -d'
{
  "title": "My 1st blog entry",
  "text": "Starting to get the hang of this ..."
}
'
