#!/bin/bash
# Cloudflare Pages build wrapper
# Uses .cf/tool-versions (nodejs 22.16.0 only, no moonrepo)
# while allowing root .tool-versions for local dev
export ASDF_TOOL_VERSIONS_FILENAME=.cf/tool-versions
cd "$(dirname "$0")/.."
exec bash ./build.sh "$@"
