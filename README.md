# rust-musl-cross
Cross compiler for armv7-unknown-linux-musleabihf

## Setup
```
docker build -t start9/rust-musl-cross:x86_64-musl .
alias 'rust-musl-builder-x86=docker run --rm -it -v "$HOME"/.cargo/registry:/root/.cargo/registry -v "$(pwd)":/home/rust/src start9/rust-musl-cross:x86_64-musl'
```

## Usage
```
rust-musl-builder-x86 cargo build --release
rust-musl-builder-x86 musl-strip target/armv7-unknown-linux-musleabihf/release/<bin-name>
```
