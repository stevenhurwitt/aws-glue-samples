docker run -itd -e SPARK_HISTORY_OPTS="$SPARK_HISTORY_OPTS -Dspark.history.fs.logDirectory=s3a://reddit-streaming-stevenhurwitt/spark_event_log 
-Dspark.hadoop.fs.s3a.access.key=AKIAS6QER4R2WOFXM7GK -Dspark.hadoop.fs.s3a.secret.key=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" -p 18080:18080 glue/sparkui:latest "/opt/spark/bin/spark-class org.apache.spark.deploy.history.HistoryServer"