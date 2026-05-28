# beam-utils

> Deprecated. I don't use it anymore.

A flake providing utils for BEAM.

## Why?

The nixpkgs contains BEAM related utils with a broad set of features, but I am looking for implementations with more singular functionality. Given the wide user base of nixpkgs, to avoid affecting them, I decide to maintain my own utils. In the future, I'll try to merge them back to nixpkgs.

## Overlay

This flake primarily provides an overlay, which puts utils into a top-level namespace - `beamUtils`.

After setting up the overlay, you can access it via:

```nix
pkgs.beamUtils
```

## Tests

Test `buildMixRelease`:

```console
$ nix build '.#test-buildMixRelease'
```

## Todo

Read [TODO.md](./TODO.md) for more details.

## License

Apache License 2.0
