# Introduction

This is a collection mini scripts to practise examples such as
index/query/analyze etc in the book [*Elasticsearch The Definitive
Guide*][1].

## Pre-requistes

This project makes of docker and docker-compose to provison a single
node Elasticsearch environment. You need following tools:

- recent [docker community edition][2](tested on 18.06.0-ce)
- curl

## Start the virtual environment

You clone this project and change directory to the `venv` sub-directory
and execute:

    docker-compose up

Check the health of Elasticsearch by:

    curl http://localhost:9200

If you get something like:

    {
      "name" : "bc97b8d25aeb",
      "cluster_name" : "docker-cluster",
      "cluster_uuid" : "LrPieGs5R0SGk2eOymM12w",
      "version" : {
        "number" : "7.4.2",
        "build_flavor" : "default",
        "build_type" : "docker",
        "build_hash" : "2f90bbf7b93631e52bafb59b3b049cb44ec25e96",
        "build_date" : "2019-10-28T20:40:44.881551Z",
        "build_snapshot" : false,
        "lucene_version" : "8.2.0",
        "minimum_wire_compatibility_version" : "6.8.0",
        "minimum_index_compatibility_version" : "6.0.0-beta1"
      },
      "tagline" : "You Know, for Search"
    }

Then congratulations, you are done with environment setup.
Then you can run the examples under various sub-foders as indicated in
the catalog section that follows.

## Catalog

| sub-directory      | comment                                   |
| ------------------ | ----------------------------------------- |
| account            | imaginary bank account                    |
| employee           | imaginary employee directory              |
| cluster            | cluster wide queries                      |
| blog               | imaginary blogs to demo index/shards etc  |


[1]: https://www.elastic.co/guide/en/elasticsearch/guide/2.x/index.html
[2]: https://hub.docker.com/search?type=edition&offering=community