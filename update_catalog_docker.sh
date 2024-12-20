#!/bin/bash
docker --config ./secrets/repo-docker-config pull dockerhub.fokus.fraunhofer.de:5000/piveau/hub/piveau-hub-repo:latest
docker --config ./secrets/search-docker-config pull dockerhub.fokus.fraunhofer.de:5000/piveau/hub/piveau-hub-search:latest
docker --config ./secrets/normalization-docker-config pull dockerhub.fokus.fraunhofer.de:5000/possible/normalization-urdna2015:latest