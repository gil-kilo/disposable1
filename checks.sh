#!/bin/sh
set -eu
node --input-type=module -e '
  import assert from "node:assert/strict";
  import { formatLabel } from "./label.mjs";
  assert.equal(formatLabel("ready"), "ready");
  assert.equal(formatLabel(""), "");
'
