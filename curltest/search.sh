#!/bin/bash
curl -s http://localhost:8000/api/search --data '{"skill":"one", "spaceID": "1,2"}' --header 'Content-Type: application/json'