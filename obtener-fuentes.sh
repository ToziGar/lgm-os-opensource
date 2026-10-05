#!/usr/bin/env bash
# Baja el código fuente completo de una versión de Debian 12: sus DVD de fuentes, que llevan el
# de todo lo que contiene la netinst en que se basa la ISO de LGM-OS (ver isos.md).
#
#   bash obtener-fuentes.sh 12.12.0 fuentes/
#
# Son varios gigas. Primero se mira en el archivo de versiones viejas de Debian y, si no está
# ahí (la versión vigente), en la carpeta «current».
set -euo pipefail

VERSION="${1:-}"
DESTINO="${2:-fuentes-debian-$VERSION}"
[[ "$VERSION" =~ ^12\.[0-9]+\.[0-9]+$ ]] || { echo "Uso: $0 12.X.0 [carpeta]"; exit 1; }

mkdir -p "$DESTINO"
for base in "https://cdimage.debian.org/cdimage/archive/$VERSION/source/iso-dvd" \
            "https://cdimage.debian.org/debian-cd/current/source/iso-dvd"; do
  lista="$(wget -qO- "$base/" 2>/dev/null \
    | grep -oE "debian-$VERSION-source-DVD-[0-9]+\.iso" | sort -uV || true)"
  if [[ -n "$lista" ]]; then
    echo "==> Fuentes de Debian $VERSION en $base"
    wget -q -O "$DESTINO/SHA256SUMS" "$base/SHA256SUMS"
    for iso in $lista; do
      echo "    $iso"
      wget -c -q --show-progress -O "$DESTINO/$iso" "$base/$iso"
    done
    (cd "$DESTINO" && grep -E "source-DVD-[0-9]+\.iso" SHA256SUMS | sha256sum -c -)
    echo "Listo: $DESTINO"
    exit 0
  fi
done
echo "No encuentro los DVD de fuentes de Debian $VERSION en cdimage.debian.org." >&2
echo "Están también, paquete a paquete, en https://snapshot.debian.org" >&2
exit 1
