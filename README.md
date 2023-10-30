# ttyMIDI Nix flake

Nix flake with a derivation for [ttyMIDI](https://github.com/robelix/hard-dj/tree/master/ttymidi/).

## Usage

So far I've only ever used this in a Nix shell. So, in the cloned repo directory:

```bash
$ nix shell
$ ttymidi --usage
Usage: ttymidi [-pqv?V] [-b BAUD] [-n NAME] [-s DEV] [--baudrate=BAUD]
            [--name=NAME] [--printonly] [--quiet] [--serialdevice=DEV]
            [--verbose] [--help] [--usage] [--version]
```

Have fun!