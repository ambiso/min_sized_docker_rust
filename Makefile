.PHONY: container.tgz
container.tgz:
	cargo build --release --target x86_64-unknown-linux-musl
	docker build -t nothing .
	rm -f "$@"
	docker image save nothing -o "$@"
	docker run -it --rm nothing