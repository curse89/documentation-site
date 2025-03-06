GOAL = $(filter-out $@,$(MAKECMDGOALS))

up:
	docker compose up

in:
	docker compose exec -it app sh

new:
	hugo new site $(GOAL)

serve:
	hugo serve

%:
	@: