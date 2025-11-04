.PHONY: container.tgz
container.tgz:
	cargo build --release --target x86_64-unknown-linux-musl
	docker build -t nothing .
	docker image save nothing -o $@