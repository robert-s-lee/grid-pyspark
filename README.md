Example of Grid.ai running PySpark 

# Setup
clone python examples
```
conda create --name gridspark python=3.8
conda activate gridpspark
pip install lightning-grid
pip install github-clone
ghclone https://github.com/apache/spark/tree/master/examples/src/main/python
grid login
```

# Run Locally

```bash
docker build -t pyspark:latest -f pyspark.dockerfile .
docker run -it pyspark:latest python python/ml/binarizer_example.py
```

Output from the run
```
WARNING: An illegal reflective access operation has occurred
WARNING: Illegal reflective access by org.apache.spark.unsafe.Platform (file:/usr/local/spark-3.1.2-bin-hadoop3.2/jars/spark-unsafe_2.12-3.1.2.jar) to constructor java.nio.DirectByteBuffer(long,int)
WARNING: Please consider reporting this to the maintainers of org.apache.spark.unsafe.Platform
WARNING: Use --illegal-access=warn to enable warnings of further illegal reflective access operations
WARNING: All illegal access operations will be denied in a future release
21/07/23 15:52:49 WARN NativeCodeLoader: Unable to load native-hadoop library for your platform... using builtin-java classes where applicable
Using Spark's default log4j profile: org/apache/spark/log4j-defaults.properties
Setting default log level to "WARN".
To adjust logging level use sc.setLogLevel(newLevel). For SparkR, use setLogLevel(newLevel).
Binarizer output with Threshold = 0.500000
+---+-------+-----------------+                                                 
| id|feature|binarized_feature|
+---+-------+-----------------+
|  0|    0.1|              0.0|
|  1|    0.8|              1.0|
|  2|    0.2|              0.0|
+---+-------+-----------------+
```

# Run on Grid.ai
```bash
grid run --dockerfile pyspark.dockerfile python/ml/binarizer_example.py
```