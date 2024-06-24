# Data Processing Training

This repository contains some simple rspec-based exercises to help understand various ways to process data. These exercises are meant to be done with a mentor who can help provide a scaffolding of understanding and backgrounds on how we do these things in real life.

## What is Data Processing

3 Parts (ETL)

1. (Extract) Take data from somewhere, turn it into a hash.
2. (Transform) Create a new hash from that original data that reflects the data you want.
3. (Load) Save that data somewhere.

Depending on what the inputs and outputs are we call this process different things. For instance:

### Indexing

* **Extract**: Database
* **Transform**: Anything
* **Load**: Solr

###  Data Migration

* **Extract**: Database
* **Transform**: Anything
* **Load**: Same Database

###  Caching

* **Extract**: Database
* **Transform**: None
* **Load**: Database

When you take multiple of these sections of (Extract->Transform->Load) and chain them together you get a data pipeline.

For instance, for DPUL-Collections we plan to do:

(`Figgy Database` -> `None` -> `DPUL-C Figgy Database Cache`)(Cache) -> (`DPUL-C Database` -> `Solr Hash` -> `DPUL-C Database Solr Cache`)(Cache) -> (`DPUL-C Database Solr Cache` -> `None` -> `Solr`)(Index)

## Initial Data Processing

### Goal

Practice some common steps of what we do in the `Transform` step.

### Contents

1. `DataProcessor1`: Change the hash entirely.
1. `DataProcessor2`: Change a field to be a different form of itself.
1. `DataProcessor3`: Create a new field based on values in the input hash.
