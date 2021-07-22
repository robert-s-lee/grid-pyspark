# https://github.com/jupyter/docker-stacks/tree/master/pyspark-notebook

FROM jupyter/pyspark-notebook

RUN pip install pyspark

WORKDIR /gridai/project
COPY . .
