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
	docker logs $2
	;;
pdb)
	docker exec -it postgresdb bash
	;;
mdb)
	docker exec -it mongodb bash
	;;
py)
        python3 $2
        ;;
update)
        git clone https://github.com/amosasherov/q.git
        cd q
        sudo cp q /usr/bin/
        cd .. && rm -rf q
        ;;
esac

