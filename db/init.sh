#!/bin/bash

DB_DIR=$(cd $(dirname $0) && pwd)
cd $DB_DIR

mysql -uroot --password=password -e "DROP DATABASE IF EXISTS isubata; CREATE DATABASE isubata;"
mysql -uroot --password=password isubata < ./isubata.sql
