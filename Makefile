all: clean generate form fmt build

clean:
	rm -rf src/

generate:
	svd2rust --target none -i svd/esp8266.svd

form:
	form -i lib.rs -o src/
	rm lib.rs

fmt:
	cargo fmt

build:
	cargo clean
	cargo build