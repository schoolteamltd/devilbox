#!/bin/sh

if hash docker-compose 2>/dev/null; then
	docker-compose exec --user devilbox php bash -c "source /opt/nvm/nvm.sh && sudo chmod a+w /opt/nvm && nvm install 16 && nvm use 16" -l 
	docker-compose exec --user devilbox php bash -l
else
	docker compose exec --user devilbox php bash -l 
fi
