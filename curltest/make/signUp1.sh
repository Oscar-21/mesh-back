#!/bin/bash
curl -s http://localhost:8000/api/signUp --data '{"name":"admin${1}","email":"admin${1}@mail.com","password":"adminkeypassword", "spaceID":"1", "searchOpt":"0", "skill":"one,two,three"}' --header 'Content -Type: application/json'
