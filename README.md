# Simple C2PA API

This is a simple service built on [C2PA Rust SDK](https://github.com/contentauth/c2pa-rs) that analyses and extracts the C2PA from an image. Raw C2PA is stored locally.

## Status

Proof of concept.

## Scope

- Image processing
- Image media type is autodetected from the content (if possible)
- Note: It is easy to extend the service to feed the media type information via HTTP Header (e.g., content-type)

## Requirements

- [Rust and Cargo](https://doc.rust-lang.org/cargo/getting-started/installation.html)

## Building

Dev/test

```bash
cargo build
```

Release

```bash
cargo build --release
```

## Configuration

Configuration is loaded from the [.env file](.env) or set via the CLI arguments.

```bash
C2PA API service

Usage: c2pa-api [OPTIONS]

Options:
  -e, --endpoint <URL>    Example: localhost:8001
  -s, --c2pastore <PATH>  Example: c2pa-store
  -h, --help              Print help
  -V, --version           Print version
```

Largest file-size is currently hardcoded and limited to 10 Mb. Modify it at your will.

## Running

Dev/test

```bash
./target/debug/c2pa-api
```

Release

```bash
./target/release/c2pa-api
```

## License

See [License](LICENSE)