# LGM-OS — la parte de código abierto

LGM-OS es software propietario (<https://lgm-os.com>). Lo que hay en este repositorio es SOLO lo
que las licencias libres de terceros obligan a dar: qué programas libres reparte LGM-OS ya
compilados, de qué versión exacta, y cómo conseguir su código fuente completo. Con esto no se
puede reconstruir LGM-OS: el panel, las licencias, el portal y LGM Connect no están aquí ni
contienen código de licencia GPL.

Se mantiene al día solo: cada vez que cambia lo que repartimos con licencia libre, cambia aquí.

## Qué se reparte con licencia libre

| Qué | Dónde va | Licencia | Código fuente |
|---|---|---|---|
| Programas de Debian 12 de la imagen de instalación (el núcleo Linux, el instalador de Debian, BusyBox, GRUB, isolinux y el resto de la netinst) | La ISO de LGM-OS | GPL y otras libres, cada uno la suya | Los DVD de fuentes de la versión de Debian en que se basa cada ISO: ver [`isos.md`](isos.md) y [`obtener-fuentes.sh`](obtener-fuentes.sh) |
| noVNC (la consola de las máquinas virtuales) | Dentro del panel compilado | MPL 2.0, sin modificar | <https://github.com/novnc/noVNC> (la versión exacta, en `THIRD-PARTY-NOTICES-LICENCIAS.txt`) |
| llama.cpp (`llama-server`, el motor de la IA local; variantes de procesador y Vulkan, publicación `b11381`) | Lo baja el NAS al descargar un modelo de la IA local, de la publicación oficial y con su huella fijada; corre como programa aparte | MIT, sin modificar | <https://github.com/ggml-org/llama.cpp/releases/tag/b11381> |
| Modelos de la IA local: Qwen2.5 1.5B Instruct, Qwen3 4B y Qwen3 8B (GGUF Q4_K_M) y Qwen3 Embedding 0.6B (GGUF Q8_0) | Los baja el NAS de Hugging Face al elegirlos, en una revisión fija y con su huella | Apache 2.0, sin modificar | <https://huggingface.co/Qwen> (repositorios `Qwen2.5-1.5B-Instruct-GGUF`, `Qwen3-4B-GGUF`, `Qwen3-8B-GGUF`, `Qwen3-Embedding-0.6B-GGUF`) |

Todo se usa **sin modificar**. A lo de Debian la ISO solo le añade archivos propios de LGM-OS
(las respuestas del instalador, el menú de arranque, el tema y la imagen de marca), que no son
obra derivada de ningún programa GPL.

Lo que el NAS instala después (aria2, qBittorrent, Samba, Docker…) lo baja cada equipo de los
servidores de Debian: quien lo reparte es Debian, y su código está en <https://snapshot.debian.org>.

La búsqueda inteligente de la Galería tampoco viaja en el paquete: el NAS que la activa baja sus
bibliotecas de PyPI (ONNX Runtime, MIT; NumPy, BSD; FlatBuffers, Apache 2.0; Protocol Buffers,
BSD; packaging, Apache 2.0 o BSD) y sus modelos de Hugging Face (CLIP ViT-B/32, MIT; el texto
multilingüe de sentence-transformers, Apache 2.0; YuNet, MIT, y SFace, Apache 2.0, de OpenCV).
Ninguno es copyleft; la lista exacta, con la versión y la huella de cada archivo, está en
`backend/requirements-ia.lock` y `backend/app/core/datos/ia_modelos.tsv` del producto.

<!-- ia-voz -->
El dictado y la respuesta en voz de la IA local tampoco viajan en el paquete: el NAS que los
activa baja de PyPI pywhispercpp 1.5.1 (MIT), que lleva dentro whisper.cpp y ggml (MIT), y de
Hugging Face un modelo de Whisper convertido por whisper.cpp (pesos de OpenAI, MIT). Para la
voz baja el programa Piper 2023.11.14-2 (MIT) de <https://github.com/rhasspy/piper>, que trae
dentro espeak-ng (GPL-3, código en <https://github.com/rhasspy/espeak-ng>) y piper-phonemize
(MIT): corre como programa APARTE, lanzado por orden y hablándole por su entrada y su salida;
nada de él se enlaza con el panel. Las voces son de <https://huggingface.co/rhasspy/piper-voices>
y solo las entrenadas desde cero con grabaciones libres: carlfm (español, dominio público),
LJ Speech (inglés, dominio público), MLS de alemán y de francés (Multilingual LibriSpeech, de
Pratap y otros, OpenSLR 94, CC BY 4.0) y serena (italiano, de committa, CC BY 4.0). Portugués y
brasileño no tienen ninguna así y van sin voz. La lista exacta, con la versión y la huella de
cada archivo, está en `backend/requirements-ia-voz.lock` y `backend/app/core/datos/ia_voz.tsv`.

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
bibliotecas GPL, AGPL o LGPL: se comprueba en cada versión.

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
