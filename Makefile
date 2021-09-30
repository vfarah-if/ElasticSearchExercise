es-multi-up:
	echo "Loading  multi node ES server to play with ..."
	docker compose up

es-multi-down:
	echo "Stopping the multi node ES service ..."
	docker compose down

es-single-up:
	docker run -p 9200:9200 -p 9300:9300 -e "discovery.type=single-node" docker.elastic.co/elasticsearch/elasticsearch:7.15.0

es-test:
	echo "Checking nodes..."
	curl "http://localhost:9200/_cat/nodes?v=true"
