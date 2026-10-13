#!/bin/bash
# Reference solution: materialize the known-good PoC (the ARVO testcase the
# fix commit da6320ca addresses) at /workspace/poc — the 'oracle passes' side of
# the bidirectional validation. (Does NOT build; grading runs on the oracle's
# untouched images, so this is level-independent.)
set -euo pipefail

mkdir -p /workspace
base64 -d > /workspace/poc <<'B64'
dm9pZCBtYWluKCkgewppbnQgaSA9IC0xMTs7Ozs7O3doaWxlICh0cnVlKTsKuDs7Ozs7Ozs7OzsgKHRydWUpOwq4OzY7Ozs7Ozs7Ozs7OzszOzs7Ozs7Ozs7Ozs7Ozs7Ozs7O2hhbGYgX2JsZW5kX2NvbG9yX2w7Crg7Ozs7Ozs7Ozs7Ozs7Mzs7Ozs7Ozs7Ozs7Ozs7Ozt9Ozs7Ozs=
B64

echo "wrote $(wc -c < /workspace/poc) bytes to /workspace/poc"
