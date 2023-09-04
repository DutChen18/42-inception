VOLUMES = /home/csteenvo/data/wordpress /home/csteenvo/data/mariadb

all:
	mkdir -p $(VOLUMES)
	docker compose --file srcs/docker-compose.yml up --build

clean:
	sudo rm -rf $(VOLUMES)

.PHONY: all clean
