#!/usr/bin/env bash
set -euo pipefail

root="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
cd "$root"

required=(index.html terms/index.html privacy/index.html support/index.html admin/index.html styles.css robots.txt)
for file in "${required[@]}"; do
  test -s "$file" || { echo "Missing or empty required file: $file" >&2; exit 1; }
done

for link in terms/ privacy/ support/ admin/; do
  grep -Fq "href=\"${link}\"" index.html || { echo "Missing home link: $link" >&2; exit 1; }
done

if grep -RInE \
  --exclude='*.md' \
  --exclude-dir='.git' \
  --exclude='check-site.sh' \
  '(BEGIN (RSA|OPENSSH|PRIVATE) KEY|AIza[0-9A-Za-z_-]{20,}|gh[pousr]_[A-Za-z0-9_]{20,}|GOOGLE_APPLICATION_CREDENTIALS=|client_secret)' .; then
  echo "Possible secret-like content found" >&2
  exit 1
fi

echo "Hermes policy site validation passed."
