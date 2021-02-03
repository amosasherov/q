#!/usr/bin/bash
case $1 in
up)
        docker-compose up -d
        ;;
down)
        docker-compose down
        ;;
ps)
        docker-compose ps
        ;;
dx)
        docker exec -it $2 bash
        ;;
dl)
	docker logs $2 $3
	;;
pdb)
	docker exec -it postgresdb psql -U user points
	;;
mdb)
	docker exec -it mongodb mongo
	;;
p)
        python3 $2
        ;;
update)
	curl https://raw.githubusercontent.com/amosasherov/q/master/q > /usr/bin/q
        ;;
esac
