# Nom des images et conteneurs
ALPINE_IMAGE = alpine_build
DEBIAN_IMAGE = debian_build
OUTPUT_DIR = $(shell pwd)/output

# Règles de construction des images
build_alpine:
	docker build -f Dockerfile.musl -t $(ALPINE_IMAGE) .

build_debian:
	docker build -f Dockerfile.glibc -t $(DEBIAN_IMAGE) .

# Règles d'exécution des conteneurs pour récupérer les binaires
run_alpine: build_alpine
	@mkdir -p $(OUTPUT_DIR)
	docker run --rm -v $(OUTPUT_DIR):/output $(ALPINE_IMAGE)

run_debian: build_debian
	@mkdir -p $(OUTPUT_DIR)
	docker run --rm -v $(OUTPUT_DIR):/output $(DEBIAN_IMAGE)

# Règle pour tout construire et exécuter
all: run_alpine run_debian
	@echo "Les binaires compilés sont disponibles dans le dossier output/."

# Nettoyage des images et des binaires
clean:
	-docker rmi $(ALPINE_IMAGE) $(DEBIAN_IMAGE)
	-rm -rf $(OUTPUT_DIR)

.PHONY: build_alpine build_debian run_alpine run_debian all clean
