FROM neo4j:latest

WORKDIR /usr/src/neo4j

#RUN apt-get update && \
	#apt-get install python3 -y

COPY ./dump/neo4j.dump /var/lib/neo4j/dumps/neo4j.dump
RUN neo4j-admin load --verbose --force --database=neo4j --from=/var/lib/neo4j/dumps/neo4j.dump

EXPOSE 7474
EXPOSE 7687
