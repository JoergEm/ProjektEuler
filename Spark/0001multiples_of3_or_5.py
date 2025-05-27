"""
Python 3.8.20
PySpark 3.5.5
Pandas 2.0.3
0001multiples_of_3_or_5.py
Copyright 2025 @GitHub JoergEm
This program is WITHOUT ANY WARRANTY; without even the implied
warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.
"""


from pyspark.sql import SparkSession
from pyspark.sql.functions import col


spark = SparkSession.builder.appName("0001multiples_of_3_or_5").getOrCreate()
numbers = spark.range(1000).toDF("nummer")
filtered = numbers.filter((col("nummer") % 3 == 0) | (col("nummer") % 5 == 0))
summe = filtered.groupBy().sum("nummer").collect()[0][0]
print(summe)
spark.stop()