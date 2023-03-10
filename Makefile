.PHONY: all
all: deploy

.PHONY: deploy
.SILENT: deploy
deploy:
	dfx deploy predykat_bitcoin_bridge --argument '(variant { Regtest })'

.PHONY: clean
.SILENT: clean
clean:
	rm -rf .dfx
	cargo clean
