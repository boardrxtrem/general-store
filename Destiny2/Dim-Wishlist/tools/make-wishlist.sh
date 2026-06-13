#!/usr/bin/env bash

set -euo pipefail

wishlist_name="${1}"
relative_wishlist_manager_output="./littlelight/dim/${wishlist_name}.txt"
relative_additional="./additionals/${wishlist_name}.txt"
output="./${wishlist_name}.txt"

cp -- "${relative_wishlist_manager_output}" "${output}"
if [ -f "${relative_additional}" ]; then
  cat -- "${relative_additional}" >> "${output}"
fi
