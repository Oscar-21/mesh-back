#!/bin/bash
curl -s http://localhost:8000/api/signUp --data '{"name":"organizer${1}","email":"organizer@mail.com","password":"organkeypassword", "spaceID":"1", "searchOpt":"0", "skill":"one,two,six"}' --header 'Content-Type: application/json'

