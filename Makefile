up:
	@echo "Starting services in Production mode..."
	docker compose --env-file .env -f docker/compose.production.yaml up -d --build

down:
	@echo "Stopping services..."
	docker compose --env-file .env -f docker/compose.production.yaml down
build:
	@echo "Building images for Production..."
	docker compose --env-file .env -f docker/compose.production.yaml build