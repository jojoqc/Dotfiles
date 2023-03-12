#!/bin/bash
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh

git clone https://github.com/rust-lang/rust-analyzer.git
cd rust-analyzer
cargo xtask install --server
cd ..
rm -rf rust-analyzer

rustup component add rust-src
rustup component add rustfmt
rustup component add clippy

cargo install cargo-watch
cargo install rtx-cli
cargo install sccache
cargo install coreutils
cargo install du-dust
cargo install bat
cargo install evcxr
cargo install evcxr_jupyter
cargo install bacon
# cargo install cargo-info
# cargo install ncspot
cargo install speedtest-rs
cargo install wiki-tui
# cargo install ripgrep
# cargo install mprocs
# cargo install zellij
# cargo install nu
# cargo install exa
# cargo install starship
# cargo install bob-nvim
# cargo install gitui
# cargo install irust


rustup install nightly
rustup component add rust-src --toolchain nightly-x86_64-unknown-linux-gnu
rustup component add rust-analyzer --toolchain nightly-x86_64-unknown-linux-gnu
rustup component add clippy --toolchain nightly-x86_64-unknown-linux-gnu

cargo +nightly install cargo-watch
cargo +nightly install sccache
cargo +nightly install evcxr

#USAGE
#RUSTC_WRAPPER=sccache cargo install package
#example:
#RUSTC_WRAPPER=sccache cargo install coreutils

#exa -abghHliS

