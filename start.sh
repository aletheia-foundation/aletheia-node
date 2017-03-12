#!/bin/bash
randomUtf8=$(head -c 64 /dev/urandom | base64)
(umask 377 ; echo $randomUtf8 > .password)

geth --datadir .ethereum-test init config/test/genesis.json
geth --datadir .ethereum-test --password .password account new
geth --datadir .ethereum-test --mine  js node_modules/embark/js/mine.js
