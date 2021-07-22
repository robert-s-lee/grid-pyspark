Examples Grid.ai running PySpark MLlib MLlib RDD

```
docker build -t pyspark:latest -f pyspark.dockerfile .
docker run -it pyspark:latest python /gridai/project/examples/src/main/python/ml/binarizer_example.py
grid run --dockerfile pyspark.dockerfile examples/src/main/python/ml/binarizer_example.py
```
