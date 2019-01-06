#!/bin/sh
set -eu

echo "Main download site: https://datasets.imdbws.com/"
wget https://datasets.imdbws.com/name.basics.tsv.gz
wget https://datasets.imdbws.com/title.akas.tsv.gz
wget https://datasets.imdbws.com/title.basics.tsv.gz
wget https://datasets.imdbws.com/title.crew.tsv.gz
wget https://datasets.imdbws.com/title.episode.tsv.gz
wget https://datasets.imdbws.com/title.principals.tsv.gz
wget https://datasets.imdbws.com/title.ratings.tsv.gz
gunzip name.basics.tsv.gz \
       title.akas.tsv.gz \
       title.basics.tsv.gz \
       title.crew.tsv.gz \
       title.episode.tsv.gz \
       title.principals.tsv.gz \
       title.ratings.tsv.gz
