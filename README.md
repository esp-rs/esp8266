# esp8266

---

## This project has moved! It can now be found in the [esp-rs/esp-pacs](https://github.com/esp-rs/esp-pacs/tree/main/esp8266) repository.

---

[![Build Status](https://travis-ci.com/esp-rs/esp8266.svg?branch=master)](https://travis-ci.com/esp-rs/esp8266)
![crates.io](https://img.shields.io/crates/v/esp8266.svg)

A peripheral access crate the ESP8266. See the [`svd2rust` repo](https://github.com/rust-embedded/svd2rust) for more infomation on how to use this crate. Espressif do not provide an SVD for the ESP8266, so the SVD used in this project has been generated from the C header documentation via the [idf2svd](https://github.com/MabezDev/idf2svd) tool.

Join in on the discussion: https://matrix.to/#/#esp-rs:matrix.org!

## [`Documentation`](https://docs.rs/esp8266/latest/esp8266/)

## Building

Required dependencies:

- [form](https://crates.io/crates/form)
- [svd](https://github.com/stm32-rs/svdtools)
- [svd2rust](https://github.com/rust-embedded/svd2rust)

```
$ make
```

## Submitting new patches

The base svd file created from `idf2svd` should **not** be edited. Instead the svd is manipulated through the svdtools patching tool.

See [svdtools](https://github.com/stm32-rs/svdtools) and [Device and Peripheral YAML Format](https://github.com/stm32-rs/svdtools#device-and-peripheral-yaml-format) for more infomation on patching.

## License

Licensed under either of

- Apache License, Version 2.0 ([LICENSE-APACHE](LICENSE-APACHE) or
  http://www.apache.org/licenses/LICENSE-2.0)
- MIT license ([LICENSE-MIT](LICENSE-MIT) or http://opensource.org/licenses/MIT)

at your option.

### Contribution

Unless you explicitly state otherwise, any contribution intentionally submitted
for inclusion in the work by you, as defined in the Apache-2.0 license, shall be
dual licensed as above, without any additional terms or conditions.
