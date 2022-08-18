#! /bin/bash

if [ $( docker ps | grep backend_container | wc -l ) -gt 0 ]; then
  echo "backend_container exists"
else
  echo "backend_container does not exist"
  exit 1
fi


if [ $( docker ps | grep frontend_container | wc -l ) -gt 0 ]; then
  echo "frontend_container exists"
else
  echo "frontend_container does not exist"
  exit 1
fi


if [ $(curl -I localhost:8080 2>/dev/null | head -n 1 | cut -d$' ' -f2) == 200 ]; then
  echo "url - 200" 
else
  echo "url - not 200"
  exit 1
fi
