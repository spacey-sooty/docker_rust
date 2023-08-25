FROM rust:1.72.0

COPY . .

RUN cargo build --release

CMD ["./target/release/docker"]

