VERSION = s9

build: accounts gatewayserver cards loans eurekaserver configserver

up:
	cd compose/default && docker compose up -d

down:
	cd compose/default && docker compose down

accounts:
	cd accounts && ./gradlew jib

gatewayserver:
	cd gatewayserver && ./gradlew jib

cards:
	cd cards && ./gradlew jib

loans:
	cd loans && ./gradlew jib

eurekaserver:
	cd eurekaserver && ./gradlew jib

configserver:
	cd configserver && ./gradlew jib

pull: accountsImage gatewayserverImage cardsImage loansImage eurekaserverImage configserverImage

accountsImage:
	docker pull suhwan22/accounts:${VERSION}

gatewayserverImage:
	docker pull suhwan22/gatewayserver:${VERSION}

cardsImage:
	docker pull suhwan22/cards:${VERSION}

loansImage:
	docker pull suhwan22/loans:${VERSION}

eurekaserverImage:
	docker pull suhwan22/eurekaserver:${VERSION}

configserverImage:
	docker pull suhwan22/configserver:${VERSION}

.PHONY: build up down accounts gatewayserver cards loans eurekaserver configserver
