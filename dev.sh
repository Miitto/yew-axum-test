#!/usr/bin/env bash
set -euo pipefail
IFS=$'\n\t'

(trap 'kill 0' SIGINT SIGTERM EXIT; \
 bash -c 'cd client; trunk serve --proxy-backend=http://[::1]:8081/api/' & \
 bash -c 'cargo watch -c -q --ignore '*.sh' -- cargo run --bin server -- --port 8081')