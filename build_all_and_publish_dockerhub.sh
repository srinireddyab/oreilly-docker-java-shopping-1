#!/bin/bash

cd shopfront
mvn clean install
if docker build -t chinnichinnu/shopfront . ; then
  docker push chinnichinnu/shopfront
fi
cd ..

cd productcatalogue
mvn clean install
if docker build -t chinnichinnu/productcatalogue . ; then
  docker push chinnichinnu/productcatalogue
fi
cd ..

cd stockmanager
mvn clean install
if docker build -t chinnichinnu/stockmanager . ; then
  docker push chinnichinnu/stockmanager
fi
cd ..
