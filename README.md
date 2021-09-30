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

3. **Start a single node** using docker

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

   

## Tutorial and Videos

Attached are some PDF's shared to read before even going through the main documentation. This includes [Introducing Elasticsearch](./introducing-elasticsearch-slides.pdf) and [executing crud operations](./executing-crud-operations-using-the-elasticsearch-apis-slides.pdf).	

Add a **chrome plugin** to help you do ElastiSearch stuff called [ElasticSearch Head](https://chrome.google.com/webstore/detail/elasticsearch-head/ffmkiejjmecolpfloofpjologoblkegm) to help visualise your Elasticsearch instance, to see indexes, create structured queries and lots more

![image-20210930160154272](./images/elastic-search-head.png)

1. [Getting started](https://www.elastic.co/guide/en/elasticsearch/reference/current/getting-started.html) had some realy good examples to run with curl and I found to be an easy exercise to jump into the details
2. [Configuring](https://www.elastic.co/guide/en/elasticsearch/reference/current/important-settings.html) important settings through CURL and [system configuration](https://www.elastic.co/guide/en/elasticsearch/reference/current/system-config.html)
   - [Secure settings](https://www.elastic.co/guide/en/elasticsearch/reference/current/secure-settings.html) 
   - [Audit settings](https://www.elastic.co/guide/en/elasticsearch/reference/current/auditing-settings.html)
   - [Circuit breaker](https://www.elastic.co/guide/en/elasticsearch/reference/current/circuit-breaker.html) settings to prevent out of memory issues
   - [Shard or Cluster-level](https://www.elastic.co/guide/en/elasticsearch/reference/current/modules-cluster.html) allocation settings
   - [Logging settings](https://www.elastic.co/guide/en/elasticsearch/reference/current/logging.html)
   - [Nodes by role settings](https://www.elastic.co/guide/en/elasticsearch/reference/current/modules-node.html)
   - [Network settings](https://www.elastic.co/guide/en/elasticsearch/reference/current/modules-network.html)
   - [Search settings](https://www.elastic.co/guide/en/elasticsearch/reference/current/search-settings.html)
   - [Security settings](https://www.elastic.co/guide/en/elasticsearch/reference/current/security-settings.html)
3. ES needs to be [upgraded](https://www.elastic.co/guide/en/elasticsearch/reference/current/setup-upgrade.html) from time to time and there are rolling, Full cluster or reindex options available

## Documentation and references

### Docker setup

Really good clear link for setting up docker @ https://www.elastic.co/guide/en/elasticsearch/reference/current/docker.html. There is fantastic instructions for configuring development images, and most importantly **production** configuration including icreasing nodes, memory and many other things to make this more resillient.

More advanced topics about configuring docker to secure, encrypt and other can be found @ https://www.elastic.co/guide/en/elasticsearch/reference/current/settings.html







