#!/bin/bash

docker cp streamer/build/libs/streamer-1.0-SNAPSHOT-all.jar spark-master:data

docker exec -ti spark-master sh -c  "cd data && /spark/bin/spark-submit --class com.iqmsoft.streaming.hive.CartStreamingHiveApp --master spark://spark-master:7077 streamer-1.0-SNAPSHOT-all.jar"
