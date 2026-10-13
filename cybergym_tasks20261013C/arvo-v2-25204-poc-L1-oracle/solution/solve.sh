#!/bin/bash
# Reference solution: materialize the known-good PoC (the ARVO testcase the
# fix commit 97f1b3cc addresses) at /workspace/poc — the 'oracle passes' side of
# the bidirectional validation. (Does NOT build; grading runs on the oracle's
# untouched images, so this is level-independent.)
set -euo pipefail

mkdir -p /workspace
base64 -d > /workspace/poc <<'B64'
T2dhd2H/AAGCAAAAAAAAAAQAAAAAAAAAAAAAAACCJgAAMQB7AAD7ABAAAAAAAACA7AAAAAAAAIAqBAAAAAAAAACW/GcBBf9h/wAA/wAAAAAAAAD7/wAAAgEABwAAawAAAAEIAAAK////AAD//wD/US4BAAAAAAAAAAAAAAAAHQBpABQAAAAAAAAAEAAAAAAAAIA5AAAAAAAAgCoBAAAAAAAAiwAAAAKmAM0AAAAAAAAAgAAAAAAAAACAgl9nAAUAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAqAAAAAAAAAAAAQAAD///2AAAAAAAAAIk739/fAAAhAAAAAAAAAAAAAAAAAAAAAAAAgAAAAAAQAACAgl9nAAUAAAAAAAAAEAAAAAAAAAAAAAAAAAAAAAAAAAAAEAAAAIBLAAAAAAAAACEAAAAAAA==
B64

echo "wrote $(wc -c < /workspace/poc) bytes to /workspace/poc"
