docker build -t c01 -f Dockerfile.c01 .

docker build -t c02 -f Dockerfile.c02 .

docker build -t c03 -f Dockerfile.c03 .

docker build -t proxy -f Dockerfile.proxy .

docker network create -d bridge asa-net

docker network ls

docker network inspect asa-net

docker run -d --net=asa-net --name c01 c01

docker run -d --net=asa-net --name c02 c02

docker run -d --net=asa-net --name c03 c03

docker run -dp 8000:80 --net=asa-net --name proxy proxy


