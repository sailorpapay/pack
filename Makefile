up:
	sudo docker-compose up -d
build:
	sudo docker-compose build
stop:
	sudo docker-compose stop
restart:
	sudo docker-compose restart
down:
	sudo docker-compose down
destroy:
	sudo docker-compose down --rmi all --volumes
ps:
	sudo docker-compose ps
reload:
	sudo docker-compose restart nginxpack
