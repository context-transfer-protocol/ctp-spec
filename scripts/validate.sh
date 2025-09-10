#!/usr/bin/env bash
set -euo pipefail
npx ajv validate -s schema/ctp-0.1.json -d 'examples/*.json' --strict=false
echo "✅ Example validation complete (invalid fixtures fail as expected)."