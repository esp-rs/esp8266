OUTPUT=esp8266.svd
BASE=esp8266.base.svd

all: clean patch generate form fmt build

clean:
	rm -rf src/

patch:
	rm -f svd/$(OUTPUT)
	svd patch svd/patches/esp8266.yaml
	mv svd/$(BASE).patched svd/$(OUTPUT)

generate:
	svd2rust --target xtensa-lx -i svd/$(OUTPUT)

form:
	form -i lib.rs -o src/
	rm lib.rs

fmt:
	cargo fmt

build:
	cargo clean
	cargo build
