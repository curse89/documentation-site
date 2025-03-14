GOAL = $(filter-out $@,$(MAKECMDGOALS))

up:
	docker compose up

up-prod:
	docker compose -f docker-compose.prod.yaml up

in:
	docker compose exec -it app sh

new:
	hugo new site $(GOAL)

serve:
	hugo serve

%:
	@: