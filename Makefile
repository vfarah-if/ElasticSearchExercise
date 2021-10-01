es-multi-up:
	echo "Loading  multi node ES server to play with ..."
	docker compose up

es-multi-down:
	echo "Stopping the multi node ES service ..."
	docker compose down

es-single-up:
	echo "Loading single node ES on port 9200 or 9300"
	docker run -p 9200:9200 -p 9300:9300 -e "discovery.type=single-node" docker.elastic.co/elasticsearch/elasticsearch:7.15.0

es-test:
	echo "Checking nodes..."
	curl "http://localhost:9200/_cat/nodes?v=true"

es-health:
	echo "Checking health and cluster stats..."
	curl "http://localhost:9200/_cluster/health?pretty"
