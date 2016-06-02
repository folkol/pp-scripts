while :
do
    curl -4 http://localhost:8080/smartcms/ws/messages -XPOST -H'Content-Type: application/json' -d'{"userId":"98","pageUrl":"http://full.url/goes/here","contentId":1.2345,"sessionId":"'`cat /dev/urandom | base64 | head -c 1000`'.localhost","otherData":"Custom data-'`cat /dev/urandom | base64 | head -c 100`'"}';
done
