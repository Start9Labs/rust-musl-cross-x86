FROM messense/rust-musl-cross:x86_64-musl
RUN rustup update && \
    rustup update beta && \
    rustup update nightly && \
    rustup target add --toolchain beta x86_64-unknown-linux-musl && \
    rustup target add --toolchain nightly x86_64-unknown-linux-musl
RUN apt-get update && apt-get install -y libavahi-client-dev libclang-3.9-dev clang
