# Las ISO de LGM-OS y la Debian en que se basa cada una

Lo apunta solo `deploy/build-iso.sh` al construir cada imagen. El código fuente de todo lo de
Debian que lleva una ISO es el de los DVD de fuentes de su versión base (`obtener-fuentes.sh`).

| Construida | Debian base (netinst) | SHA-256 de la ISO de LGM-OS |
|---|---|---|
| 2026-10-07 | Debian GNU/Linux 12.15.0 "Bookworm" - Official amd64 NETINST with firmware 20260711-14:01 | `537b234960183f4fba5933d82e18096a1ffb19870dd564d1efed404ac0c60c98` |
| 2026-10-12 | Debian GNU/Linux 12.15.0 "Bookworm" - Official amd64 NETINST with firmware 20260711-14:01 | `5cdd9cb5c32e7bcb9212f5c2ee6086fcdc32ce28adb2bbb2e8c1e4c85b5da7c0` |
| 2026-10-17 | Debian GNU/Linux 12.15.0 "Bookworm" - Official amd64 NETINST with firmware 20260711-14:01 | `ddb805719b9d44ed93e7417f81e19460c21b1b18dcec079de1fe024147d5f69a` |
| 2026-10-30 | Debian GNU/Linux 13.7.0 "Trixie" - Official amd64 NETINST with firmware 20260912-09:35 | `41752deffec8643099850e1c06e2d96390d87fa1a99535c53fdc778bbdb1c77f` |
