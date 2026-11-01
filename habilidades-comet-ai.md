# Habilidades del catálogo de Comet AI

Comet AI (la IA local del NAS) trae un catálogo de habilidades: instrucciones en texto, sin código, adaptadas de habilidades publicadas en ClawHub con licencia que permite copiarlas, modificarlas y repartirlas. Cada una se reescribió para las herramientas del NAS, se acortó y se tradujo a siete idiomas. El texto adaptado viaja tal cual, legible, en `backend/app/core/datos/habilidades/<habilidad>/` del paquete de cada versión, con su `ficha.json` (autor, licencia y origen); el panel enseña el autor y la licencia de cada una antes de instalarla.

| Habilidad | Nombre | Original | Autor | Licencia | Origen |
|---|---|---|---|---|---|
| `buscar-en-internet` | Buscar bien en internet | multi-search-engine | gpyangyoujun | MIT-0 | <https://clawhub.ai/gpyangyoujun/skills/multi-search-engine> |
| `contenedor-que-falla` | Contenedor que falla | openclaw-skill-local-docker-health-check | liverock | MIT-0 | <https://clawhub.ai/liverock/skills/openclaw-skill-local-docker-health-check> |
| `descargas` | Descargas y videoteca | moviefetch | seriallazer | MIT-0 | <https://clawhub.ai/seriallazer/skills/moviefetch> |
| `dudas-de-docker` | Dudas de Docker | docker-encyclopedia | kklouzal | MIT-0 | <https://clawhub.ai/kklouzal/skills/docker-encyclopedia> |
| `hacer-sitio` | Hacer sitio | linux-disk-triage | peterliu-512 | MIT-0 | <https://clawhub.ai/peterliu-512/skills/linux-disk-triage> |
| `hojas-de-calculo` | Hojas de cálculo | excel-xlsx | ivangdavila | MIT-0 | <https://clawhub.ai/ivangdavila/skills/excel-xlsx> |
| `home-assistant` | La casa con Home Assistant | home-assistant-master | gasgangrene | MIT-0 | <https://clawhub.ai/gasgangrene/skills/home-assistant-master> |
| `lista-de-la-compra` | Lista de la compra | ourgroceries | poedenon | MIT-0 | <https://clawhub.ai/poedenon/skills/ourgroceries> |
| `maquinas-virtuales` | Revisar las máquinas virtuales | tonic-vm-check | tonylnng | MIT-0 | <https://clawhub.ai/tonylnng/skills/tonic-vm-check> |
| `menu-de-la-semana` | Menú de la semana | home-food-planner | harrylabsj | MIT-0 | <https://clawhub.ai/harrylabsj/skills/home-food-planner> |
| `ordenar-carpetas` | Ordenar una carpeta | file-organizer-pro | mizhimin | MIT-0 | <https://clawhub.ai/mizhimin/skills/file-organizer-pro> |
| `ordenar-facturas` | Ordenar facturas | invoice-sorter | benboby | MIT-0 | <https://clawhub.ai/benboby/skills/invoice-sorter> |
| `ordenar-fotos` | Poner orden en las fotos | photo-archive-curator | voronindenis5 | MIT-0 | <https://clawhub.ai/voronindenis5/skills/photo-archive-curator> |
| `papeles-de-casa` | Papeles de la casa | family-os | living-hi | MIT-0 | <https://clawhub.ai/living-hi/skills/family-os> |
| `plan-de-copias` | Plan de copias | backup-manager | tooled-app | MIT-0 | <https://clawhub.ai/tooled-app/skills/backup-manager> |
| `preparar-un-viaje` | Preparar un viaje | travel-checklist | onlydreams | MIT-0 | <https://clawhub.ai/onlydreams/skills/travel-checklist> |
| `presupuesto-de-casa` | Presupuesto de casa | budget-builder | mohitagw15856 | MIT-0 | <https://clawhub.ai/mohitagw15856/skills/budget-builder> |
| `que-vemos-hoy` | ¿Qué vemos esta noche? | movie-night-decider | metobom | MIT-0 | <https://clawhub.ai/metobom/skills/movie-night-decider> |
| `recordatorios` | Recordatorios y agenda | taizi-reminder | fresh3 | MIT-0 | <https://clawhub.ai/fresh3/skills/taizi-reminder> |
| `resumen-de-noticias` | Resumen de noticias | news-briefing-research | crawlora-org | MIT-0 | <https://clawhub.ai/crawlora-org/skills/news-briefing-research> |
| `resumir-reuniones` | Notas de una reunión | meeting-notes-formatter | hmahmadcs | MIT-0 | <https://clawhub.ai/hmahmadcs/skills/meeting-notes-formatter> |
| `resumir-una-pagina` | Resumir un artículo | article-to-notes | terrycarter1985 | MIT-0 | <https://clawhub.ai/terrycarter1985/skills/article-to-notes> |
| `revisar-copias-3-2-1` | Revisar las copias (3-2-1) | backup-3-2-1-auditor | voronindenis5 | MIT-0 | <https://clawhub.ai/voronindenis5/skills/backup-3-2-1-auditor> |
| `revisar-seguridad` | Revisión de seguridad | claw-security-audit | il190502 | MIT-0 | <https://clawhub.ai/il190502/skills/claw-security-audit> |
| `salud-de-los-discos` | Salud de los discos | linux-disk-health-monitoring | peterliu-512 | MIT-0 | <https://clawhub.ai/peterliu-512/skills/linux-disk-health-monitoring> |
| `salud-del-nas` | Parte del NAS | infra-monitoring | gitcanadabrett | MIT-0 | <https://clawhub.ai/gitcanadabrett/skills/infra-monitoring> |
| `se-ha-caido-una-web` | ¿Se ha caído o soy yo? | isitdown-now | henrick86 | MIT-0 | <https://clawhub.ai/henrick86/skills/isitdown-now> |
| `tiempo` | El tiempo | weather-openmeteo | fbbyqsyea | MIT-0 | <https://clawhub.ai/fbbyqsyea/skills/weather-openmeteo> |
| `traducir` | Traducir | universal-translate | vanthienha199 | MIT-0 | <https://clawhub.ai/vanthienha199/skills/universal-translate> |
| `wifi-de-casa` | Problemas con el wifi | home-wifi-troubleshooting-map | harrylabsj | MIT-0 | <https://clawhub.ai/harrylabsj/skills/home-wifi-troubleshooting-map> |

MIT-0 no obliga a citar al autor; se cita igual. Esta lista la escribe `tools/curacion_habilidades/armar.py`.
