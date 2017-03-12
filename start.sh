#!/bin/bash
randomUtf8=$(head -c 64 /dev/urandom | base64)
(umask 377 ; echo $randomUtf8 > .password)

geth --datadir .ethereum-test init config/test/genesis.json
geth --mine --password .password js node_modules/embark/js/mine.js
