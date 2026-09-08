# homebrew-lana

Homebrew tap for [Lana](https://github.com/oponite/lana) — a programming language for uncertainty computation.

## Install

```bash
brew tap oponite/lana
brew install lana
```

The formula builds Lana from the signed release source tarball (Apache-2.0). macOS arm64 and Intel are both supported; there are no prebuilt bottles, so the first install compiles from source.

## Verify

```bash
lana version   # -> Lana 2.1.0 (LABC v2, ...)
```