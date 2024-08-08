build:
	cd accounts && ./gradlew jib
	cd cards && ./gradlew jib
	cd loans && ./gradlew jib
	cd configserver && ./gradlew jib
	cd eurekaserver && ./gradlew jib

up:
	cd compose/default && docker compose up -d

down:
	cd compose/default && docker compose down

.PHONY: build up down
