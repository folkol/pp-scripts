curl -XPOST \
     -s \
     -H 'Content-Type: application/json' \
     -d '{"username":"admin", "password":"123456"}' \
     http://localhost:8080/ace/security/token \
    | sed -En 's/.*token":"([^"]+).*/\1/p'
