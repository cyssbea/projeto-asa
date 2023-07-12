docker build -t webmail -f Dockerfile .

docker build -t proxsy -f Dockerfile .

docker network create -d bridge asa-net

docker network ls

docker network inspect asa-net

docker run -d --net=asa-net --name webmail webmail

docker run -dp 8080:80 --net=asa-net --name proxsy proxy


