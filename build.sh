#!/bin/bash

docker run -it -p7474:7474 -p7687:7687 -v /data/neo4j/data:/data -v /data/neo4j/logs:/logs -v /data/neo4j/import:/var/lib/neo4j/import -v /data/neo4j/plugins:/plugins -v /data/neo4j/dumps:/dumps neo4j:latest neo4j-admin load --verbose --force --database=neo4j --from=/dumps/neo4j.dump
