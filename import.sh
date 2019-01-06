#!/bin/sh
set -eu

psql -U imdb <<EOF

drop table if exists title_akas;

create table title_akas (
  id varchar(30),
  ordering integer,
  title varchar(900),
  region varchar(30),
  language varchar(30),
  types varchar(100),
  attributes varchar(100),
  is_original_title varchar(2)
);

\\copy title_akas from './title.akas.tsv' delimiter '	' csv header quote '';

drop table if exists title_ratings;

create table title_ratings (
  id varchar(30),
  average_rating real,
  num_votes integer
);

\\copy title_ratings from './title.ratings.tsv' delimiter '	' csv header quote '';

drop table if exists title_basics;

create table title_basics (
  id varchar(30),
  title_type varchar(30),
  primary_title varchar(500),
  original_title varchar(500),
  is_adult boolean,
  start_year varchar(10),
  end_year varchar(10),
  runtime_minutes varchar(10),
  genres varchar(50)
);

\\copy title_basics from './title.basics.tsv' delimiter '	' csv header quote '';
EOF
