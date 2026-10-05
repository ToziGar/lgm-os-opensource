# LGM-OS — la parte de código abierto

LGM-OS es software propietario (ver `LICENSE` en la raíz). Lo que hay en esta carpeta es SOLO lo
que las licencias libres de terceros obligan a dar: qué programas libres reparte LGM-OS ya
compilados, de qué versión exacta, y cómo conseguir su código fuente completo. Con esto no se
puede reconstruir LGM-OS: el panel, las licencias, el portal y LGM Connect no están aquí ni
contienen código de licencia GPL.

Esta carpeta es la que se publica como repositorio `lgm-os-opensource`.

## Qué se reparte con licencia libre

| Qué | Dónde va | Licencia | Código fuente |
|---|---|---|---|
| Programas de Debian 12 de la imagen de instalación (el núcleo Linux, el instalador de Debian, BusyBox, GRUB, isolinux y el resto de la netinst) | La ISO de LGM-OS | GPL y otras libres, cada uno la suya | Los DVD de fuentes de la versión de Debian en que se basa cada ISO: ver [`isos.md`](isos.md) y [`obtener-fuentes.sh`](obtener-fuentes.sh) |
| noVNC (la consola de las máquinas virtuales) | Dentro del panel compilado | MPL 2.0, sin modificar | <https://github.com/novnc/noVNC> (la versión exacta, en `THIRD-PARTY-NOTICES-LICENCIAS.txt`) |

Todo se usa **sin modificar**. A lo de Debian la ISO solo le añade archivos propios de LGM-OS
(las respuestas del instalador, el menú de arranque, el tema y la imagen de marca), que no son
obra derivada de ningún programa GPL.

Lo que el NAS instala después (aria2, qBittorrent, Samba, Docker…) lo baja cada equipo de los
servidores de Debian: quien lo reparte es Debian, y su código está en <https://snapshot.debian.org>.

## Si alguien pide el código

1. Mira en [`isos.md`](isos.md) en qué versión de Debian se basa la ISO por la que pregunta.
2. `bash obtener-fuentes.sh 12.X.0 carpeta/` baja los DVD de fuentes de esa versión de Debian
   (son el código completo de todo lo que lleva la netinst).
3. Súbelos a donde la persona pueda descargarlos (o a una release de este repositorio) y
   mándale el enlace. Sin coste, durante al menos tres años desde la última vez que se
   distribuyó esa ISO.

## La regla

Todo componente libre nuevo que LGM-OS reparta compilado (en la ISO, en el paquete de
actualización o dentro de LGM Connect) se apunta en la tabla de arriba en la misma tanda, con su
licencia y de dónde sale su código. Y en el panel, el servidor y LGM Connect no entra código ni
bibliotecas GPL, AGPL o LGPL: el test `test_lo_privado_no_lleva_gpl.py` lo vigila.

---

# LGM-OS — the open-source part

LGM-OS is proprietary software. This folder holds ONLY what third-party free licences require:
which free programs LGM-OS distributes in compiled form, their exact version, and how to obtain
their complete source code. The Debian programs in the installation image are used unmodified;
their source is the source DVD set of the Debian point release each ISO is based on (see
`isos.md` and `obtener-fuentes.sh`). noVNC is used unmodified under MPL 2.0
(<https://github.com/novnc/noVNC>). Source requests: the contact address at
<https://lgm-os.com/aviso-legal>, free of charge, for at least three years after each ISO
version was last distributed.
