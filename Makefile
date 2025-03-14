GOAL = $(filter-out $@,$(MAKECMDGOALS))

up:
	docker compose up

up-prod:
	docker compose -f docker-compose.prod.yaml up

docker-push:
	docker build -t curse89/documentation-site:latest -f .docker/prod/Dockerfile .
	docker push curse89/documentation-site:latest	

minify:
	hugo build -D

in:
	docker compose exec -it app sh

new:
	hugo new site $(GOAL)

serve:
	hugo serve

%:
	@: