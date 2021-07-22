# Databricks notebook source
library(tidyverse)
library(SparkR)

# COMMAND ----------

blob_container <- "abfss://ddnid-ncipc@edavsynapsedatalake.dfs.core.windows.net/"
file <- paste( "abfss://ddnid-ncehatsdr@edavsynapsedatalake.dfs.core.windows.net/DEHSP/TemperatureDistribution357_358_CT.csv", sep="")
data_frame <- read.df(file, source = "csv", header="true", inferSchema = "true") 
head(data_frame)

# COMMAND ----------

getwd()