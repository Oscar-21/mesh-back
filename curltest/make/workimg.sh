#!/bin/bash
curl -X POST -F 'logo=@./picture.jpg' -F 'spaceID=2'  http://localhost:8000/api/spaceupdate 
