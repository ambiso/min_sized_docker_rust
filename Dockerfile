FROM scratch

COPY target/x86_64-unknown-linux-musl/release/min_bin /min_bin

CMD /min_bin
