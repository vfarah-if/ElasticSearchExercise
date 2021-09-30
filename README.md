# Introduction

The reason this is in this space is for experimenting with Elastic Search for Firebreak Week. Elastic Search is intrinsic to my project but  I generally treat it as a black box, extending indexes and data when I need to but not really experimenting or utilising the full data suite.

## Environment

Locally there is a *Makefile* to help start and stop the Elasticsearch (ES) docker service. This assumes docker is setup on your machine. The version of ES utilised is **7.15**, and for more information on whats new checkout [release highlights](https://www.elastic.co/guide/en/elasticsearch/reference/current/release-highlights.html).

1. **Start** **multi node** Elastic on port 9200

   ```makefile
   make es-multi-up
   ```

2. **Down multi node** Elastic search

   ```makefile
   make es-multi-down
   ```

3. Start a single node using docker

   ```makefile
   make es-single-up
   ```

4. **Clean docker**

   ```makefile
   make clean-es
   ```

5. **Test ES** is up and running

   ```makefile
   make es-test
   ```

   This should output elastic data about node information

   ```bash
   Checking nodes...
   curl "http://localhost:9200/_cat/nodes?v=true"
   ip         heap.percent ram.percent cpu load_1m load_5m load_15m node.role   master name
   172.20.0.2           37          73   1    0.01    0.13     0.28 cdfhilmrstw *      es02
   172.20.0.4           71          73   0    0.01    0.13     0.28 cdfhilmrstw -      es03
   172.20.0.3           47          73   0    0.01    0.13     0.28 cdfhilmrstw -      es01
   ```

   

## Documentation and references

### Docker setup

Really good clear link for setting up docker @ https://www.elastic.co/guide/en/elasticsearch/reference/current/docker.html. There is fantastic instructions for configuring development images, and most importantly **production** configuration including icreasing nodes, memory and many other things to make this more resillient.

More advanced topics about configuring docker to secure, encrypt and other can be found @ https://www.elastic.co/guide/en/elasticsearch/reference/current/settings.html







