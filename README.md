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
| Programas de Debian (12 o 13, según la imagen) de la imagen de instalación (el núcleo Linux, el instalador de Debian, BusyBox, GRUB, isolinux y el resto de la netinst) | La ISO de LGM-OS | GPL y otras libres, cada uno la suya | Los DVD de fuentes de la versión de Debian en que se basa cada ISO: ver [`isos.md`](isos.md) y [`obtener-fuentes.sh`](obtener-fuentes.sh) |
| El firmware que trae la netinst «with firmware» de Debian (sección `non-free-firmware`) | La ISO de LGM-OS, tal como lo publica Debian | No libre: cada paquete con su permiso de redistribución sin modificar (en su `/usr/share/doc/<paquete>/copyright`) | No tiene código abierto; los paquetes, en <https://snapshot.debian.org> |
| Las bibliotecas de Rust de licencia MPL 2.0 que van compiladas dentro de LGM Connect: cssparser 0.37.0, cssparser-macros 0.7.1, selectors 0.38.0, dtoa-short 0.3.5 y option-ext 0.2.0 (el resto de sus ~600 crates son MIT, Apache 2.0, BSD, ISC, Zlib o Unicode: lista y textos en `frontend/src-tauri/THIRD-PARTY-NOTICES-CONNECT.txt`, que viaja dentro de la aplicación) | Dentro de LGM Connect | MPL 2.0, sin modificar | <https://crates.io/crates/cssparser/0.37.0>, <https://crates.io/crates/cssparser-macros/0.7.1>, <https://crates.io/crates/selectors/0.38.0>, <https://crates.io/crates/dtoa-short/0.3.5>, <https://crates.io/crates/option-ext/0.2.0> |
| Las bibliotecas del sistema que el AppImage de LGM Connect para Linux lleva dentro (GTK 3, WebKitGTK, GLib y las que arrastran, de Ubuntu 22.04), enlazadas dinámicamente: se pueden sustituir por otras versiones | Dentro del AppImage de LGM Connect | LGPL 2.1 o posterior la mayoría, y otras libres | Los paquetes de fuentes de Ubuntu 22.04 de la lista [`connect-linux.txt`](connect-linux.txt), que escribe `deploy/compilar-connect-linux.sh` al compilar cada AppImage; código en <https://launchpad.net/ubuntu/+source/> |
| rclone (las copias a la nube y las carpetas remotas del NAS; las «Carpetas» de LGM Connect) | No va en el paquete ni en LGM Connect: el NAS lo baja de <https://downloads.rclone.org> si el de Debian es anterior a la 1.66, y LGM Connect lo baja de allí la primera vez que monta una carpeta; corre como programa aparte | MIT, sin modificar | <https://github.com/rclone/rclone> (la versión que haya publicado rclone ese día) |
| WinFsp 2.0 (`winfsp-2.0.23075.msi`, lo que necesita rclone para montar una carpeta en Windows) | No va en LGM Connect: la aplicación baja el instalador oficial, con su huella fijada, y Windows lo instala como un controlador del sistema. Solo lo usa rclone (libre, MIT); LGM Connect no se enlaza con él | GPL 3 con excepción para programas libres, sin modificar | <https://github.com/winfsp/winfsp/tree/v2.0> |
| @scure/bip39 2.0.1, con @noble/hashes 2.0.1 y @scure/base 2.0.0 (las 12 palabras del cifrado de extremo a extremo y sus listas de palabras) | Dentro del panel compilado y de LGM Connect | MIT, sin modificar | <https://github.com/paulmillr/scure-bip39>, <https://github.com/paulmillr/noble-hashes>, <https://github.com/paulmillr/scure-base> |
| PDF.js 6.4.299 (`pdfjs-dist`, de Mozilla: pinta los PDF en el lector de Libros; se baja solo al abrir uno) | Dentro del panel compilado y de LGM Connect | Apache 2.0, sin modificar | <https://github.com/mozilla/pdf.js/tree/v6.4.299> |
| noVNC 1.5.0 (la consola de las máquinas virtuales) | Dentro del panel compilado y de LGM Connect | MPL 2.0, sin modificar | <https://github.com/novnc/noVNC/tree/v1.5.0> (la versión exacta, en `THIRD-PARTY-NOTICES-LICENCIAS.txt`) |
| llama.cpp (`llama-server`, el motor de la IA local; variantes de procesador y Vulkan, publicación `b11381`) | Lo baja el NAS al descargar un modelo de la IA local, de la publicación oficial y con su huella fijada; corre como programa aparte | MIT, sin modificar | <https://github.com/ggml-org/llama.cpp/releases/tag/b11381> |
| llama.cpp en el ordenador, para «Ofrecer la tarjeta gráfica de este PC a la IA del NAS» (la misma publicación `b11381`: CUDA 12.4 y Vulkan en Windows, Vulkan en Linux, Metal en Mac con chip de Apple) | No va dentro de LGM Connect: la aplicación lo baja la primera vez que se activa, de la publicación oficial y con su huella fijada, y lo lanza como programa aparte. En Windows con NVIDIA baja además las bibliotecas de CUDA que llama.cpp publica junto al motor (de NVIDIA, con su licencia de redistribución; no son libres ni las reparte LGM-OS) | MIT, sin modificar | <https://github.com/ggml-org/llama.cpp/releases/tag/b11381> |
| Trivy 0.75.0 (el revisor de fallos de seguridad conocidos de las imágenes de las aplicaciones, edición Empresarial) | Lo baja el NAS al encender la revisión, de la publicación oficial y con su suma SHA-256 fijada; corre como programa aparte, sin root | Apache 2.0, sin modificar | <https://github.com/aquasecurity/trivy/releases/tag/v0.75.0> |
| Versity Gateway 1.10.0 (`versitygw`, el servidor del almacenamiento S3 con versiones y bloqueo de objetos, edición Empresarial) | Lo baja el NAS al encender el almacenamiento S3, de la publicación oficial y con su suma SHA-256 fijada, y lo deja en `/opt/lgm-s3` con su `LICENSE` y su `NOTICE`; corre como programa aparte, sin root (`lgm-s3.service`) | Apache 2.0, sin modificar | <https://github.com/versity/versitygw/releases/tag/v1.10.0> |
| Habilidades del catálogo de Comet AI (instrucciones en texto, sin código, adaptadas de habilidades de ClawHub) | Dentro del paquete de actualización, en `backend/app/core/datos/habilidades/`, legibles tal cual | MIT-0 cada una (el autor y la licencia, en su `ficha.json` y en el panel), **modificadas**: reescritas para el NAS y traducidas | El original de cada una y su autor, en [`habilidades-comet-ai.md`](habilidades-comet-ai.md); lo modificado es el propio texto que viaja en el paquete |
| Modelos de la IA local (el catálogo entero): Qwen2.5 1.5B, Qwen3 1.7B, 4B, 8B y 14B, Qwen2.5 Coder 7B y 14B, Qwen3.8 27B, Qwen3.6 35B-A3B y Qwen3 Embedding 0.6B; Gemma 4 E2B, E4B, 12B, 26B-A4B y 31B (con su visión); Granite 4.2 3B, 8B y 30B; Ministral 3 3B, 8B y 14B; Devstral Small 2507; gpt-oss 20B; Phi-4 | Los baja el NAS de Hugging Face al elegirlos, de la publicación de su autor (o de `ggml-org`, que convierte los oficiales), en una revisión fija y con su huella | Apache 2.0 todos menos Phi-4 (MIT), sin modificar. gpt-oss va además con la política de uso de OpenAI | Los repositorios de cada uno en <https://huggingface.co> (`Qwen/`, `google/`, `ibm-granite/`, `mistralai/`, `microsoft/`, `ggml-org/`); el repositorio y la revisión exactos, en `backend/app/services/ia_local.py` del producto |

Todo se usa **sin modificar**. A lo de Debian la ISO solo le añade archivos propios de LGM-OS
(las respuestas del instalador, el menú de arranque, el tema y la imagen de marca), que no son
obra derivada de ningún programa GPL.

Lo que el NAS instala después (aria2, qBittorrent, Samba…) lo baja cada equipo de los
servidores de Debian: quien lo reparte es Debian, y su código está en <https://snapshot.debian.org>.
Docker (Docker CE, containerd y runc, Apache 2.0) lo baja cada equipo del repositorio oficial de
Docker para Debian: quien lo reparte es Docker, y su código está en <https://github.com/moby/moby>,
<https://github.com/containerd/containerd> y <https://github.com/opencontainers/runc>.

La búsqueda inteligente de la Galería tampoco viaja en el paquete: el NAS que la activa baja sus
bibliotecas de PyPI (ONNX Runtime, MIT; NumPy, BSD; FlatBuffers, Apache 2.0; Protocol Buffers,
BSD; packaging, Apache 2.0 o BSD) y sus modelos de Hugging Face (CLIP ViT-B/32, MIT; el texto
multilingüe de sentence-transformers, Apache 2.0; YuNet, MIT, y SFace, Apache 2.0, de OpenCV; y
YOLOX en int8, Apache 2.0, de OpenCV, que distingue personas y vehículos en los avisos de las cámaras).
Ninguno es copyleft; la lista exacta, con la versión y la huella de cada archivo, está en
`backend/requirements-ia.lock` y `backend/app/core/datos/ia_modelos.tsv` del producto.

<!-- camaras-oyen-y-matriculas -->
Con la misma IA activada, el NAS baja también los modelos de Cámaras, sin modificar y con su
huella: YAMNet de Google (Apache 2.0; los sonidos que oye una cámara), en la conversión a ONNX de
<https://huggingface.co/zeropointnine/yamnet-onnx> con los pesos intactos; LPD-YuNet de OpenCV Zoo
(Apache 2.0; dónde hay una matrícula) y el lector de matrículas de fast-plate-ocr (MIT;
<https://github.com/ankandrew/fast-plate-ocr>). La lista exacta está en
`backend/app/core/datos/ia_modelos_camaras.tsv` del producto.

<!-- icloud-fotos -->
Las fotos de iCloud de la Galería hablan con Apple con pyicloud (MIT), que el NAS baja de PyPI
con su huella como el resto de bibliotecas del servidor (`backend/requirements.lock`). Arrastra
srp, keyring, keyrings.alt, jaraco.classes, jaraco.context, jaraco.functools, jeepney,
more-itertools, zipp y backports.tarfile (MIT), importlib-metadata y lazy-importer (Apache 2.0),
tinyhtml (MIT o Apache 2.0), protobuf y SecretStorage (BSD) y fido2 (BSD 2 y Apache 2.0), que lleva
dentro, como dato y sin modificar, la lista de sufijos públicos de Mozilla (MPL 2.0; su fuente, en
<https://publicsuffix.org/list/>). Ninguna es copyleft fuerte.

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

<!-- subtitulos-auto -->
Los subtítulos automáticos de Películas usan esa misma biblioteca, sin modificar, y se bajan igual
al pedirlos: el modelo small de Whisper (el mismo archivo que el dictado) o, en la calidad alta,
large-v3-turbo, los dos convertidos por whisper.cpp desde
<https://huggingface.co/ggerganov/whisper.cpp> (pesos de OpenAI, MIT). Con su huella en el mismo
`ia_voz.tsv`. El sonido lo saca ffmpeg, que corre como programa aparte, por orden.

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

LGM Connect compiles in five MPL-2.0 Rust crates, unmodified (cssparser, cssparser-macros,
selectors, dtoa-short, option-ext; source on crates.io); every crate it ships, with its licence
text, is listed in `THIRD-PARTY-NOTICES-CONNECT.txt` inside the app. The Linux AppImage bundles,
dynamically linked and replaceable, Ubuntu 22.04 system libraries (mostly LGPL-2.1+), listed by
source package in [`connect-linux.txt`](connect-linux.txt). rclone (MIT) and WinFsp (GPL-3.0 with
a FLOSS exception, used only by rclone) are downloaded from their official releases, never bundled.

The Comet AI skill catalogue (plain-text instructions, no code) is adapted from MIT-0 skills
published on ClawHub, rewritten for the NAS tools and translated; each one's author, licence and
origin are listed in [`habilidades-comet-ai.md`](habilidades-comet-ai.md) and shown in the panel.
