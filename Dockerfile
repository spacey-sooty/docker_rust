FROM rust:1.72 AS builder

COPY . .

RUN cargo build --release

FROM ubuntu:22.04

COPY --from=builder ./target/release/rust_docker ./rust_docker

RUN chmod +x ./rust_docker

CMD ["./rust_docker"]

