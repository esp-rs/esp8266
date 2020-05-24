# esp8266

A peripheral access crate the ESP8266. See the svd2rust repo for more infomation on how to use this crate. Espressif do not provide an SVD for the esp8266, so the svd used in this project has been generated from the C header documentation via the [idf2svd](https://github.com/icewind1991/idf2svd/tree/esp8266) tool.

Join in on the discussion: https://matrix.to/#/#esp-rs:matrix.org!

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

See [svd](https://github.com/stm32-rs/svdtools) and [stm32-rs yaml format](https://github.com/stm32-rs/stm32-rs#device-and-peripheral-yaml-format) for more infomation on the patching format

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
