# Las ISO de LGM-OS y la Debian en que se basa cada una

Lo apunta solo `deploy/build-iso.sh` al construir cada imagen. El código fuente de todo lo de
Debian que lleva una ISO es el de los DVD de fuentes de su versión base (`obtener-fuentes.sh`).

| Construida | Debian base (netinst) | SHA-256 de la ISO de LGM-OS |
|---|---|---|
| 2026-10-07 | Debian GNU/Linux 12.15.0 "Bookworm" - Official amd64 NETINST with firmware 20260711-14:01 | `537b234960183f4fba5933d82e18096a1ffb19870dd564d1efed404ac0c60c98` |
