

<div align="center">

<img src="./docs/assets/banner.png?v=1" alt="Copilot Cowork Dojo" width="100%">

# Copilot Cowork Dojo 🏯

# Un marco de disciplina para<br/>tu trabajo con Microsoft 365 Copilot.

---

*Marco integral para llevar a los trabajadores del conocimiento desde un uso casual de Copilot hacia un valor empresarial medible y repetible.*

[**📖 Wiki**](./wiki/Home.md) · [**Comienza aquí**](./wiki/01-Start-Here.md) · [**Inicio rápido**](./wiki/03-Your-First-Session.md) · [**Escenarios**](./scenarios) · [**Prompts**](./prompts/library.md) · [**Habilidades**](./skills.md)

![license](https://img.shields.io/badge/license-MIT-1f6feb?style=flat-square)
![version](https://img.shields.io/badge/version-1.0-3fb950?style=flat-square)
![pipeline](https://img.shields.io/badge/pipeline-7%20steps-1f6feb?style=flat-square)
![skills](https://img.shields.io/badge/skills-34-d2691e?style=flat-square)
![scenarios](https://img.shields.io/badge/scenarios-5-8b5cf6?style=flat-square)
![personas](https://img.shields.io/badge/personas-5-14b8a6?style=flat-square)
![prompts](https://img.shields.io/badge/prompt%20patterns-15%2B-ec4899?style=flat-square)

---

</div>

> *Tus trabajadores del conocimiento no están capacitados. Es hora de llevarlos al dojo.*

Un **marco de habilidades y disciplina para Microsoft 365 Copilot Cowork** — para las personas que *usan* Copilot cada día para redactar, decidir, resumir, planificar, presentar informes y entregar trabajo de conocimiento junto a agentes.

Mientras el [Copilot Agents Dojo](https://github.com/andreaswasita/copilot-agents-dojo) capacita a los **creadores** de IA, este dojo capacita a los **compañeros de trabajo** de IA: analistas, coordinadores de proyectos, líderes de comunicaciones, gerentes de personal, asistentes ejecutivos y los usuarios avanzados que los asisten.

Copia `skills/` + `prompts/` + `.github/copilot-instructions.md` en el espacio de tu equipo → Las sesiones de Copilot Cowork descubrirán y seguirán automáticamente el flujo de trabajo.

> 🆕 **¿Nuevo aquí?** Comienza con la **[📖 Wiki](./wiki/Home.md)** paso a paso: una orientación de 5 minutos, tu primera sesión en 15 minutos y accesos directos basados en roles.
>
> ℹ️ La Wiki se encuentra en [`./wiki/`](./wiki/) dentro de este repositorio (la pestaña *Wiki* de GitHub está deshabilitada por política de empresa en este inquilino — la wiki dentro del repositorio es la versión canónica).

## Incluye

- 38 habilidades de producción (6 kata fundamentales + 6 waza de flujo + 9 kumite de tareas + 5 kumite de oficina + 7 kumite de conectores + 3 cowork multiagente + 2 dō meta)
- Flujo de trabajo obligatorio **CLARIFY → PLAN → DRAFT → REVIEW → REFINE → SHIP → LEARN**
- Paquetes de escenarios del mundo real: RR. HH., Finanzas, Ventas, Gestión de Proyectos
- Biblioteca de prompts: patrones para el 80 % del trabajo de conocimiento recurrente
- Patrones de cowork multiagente: traspaso entre agentes, orquestación, humano en el bucle
- Gobernanza: IA responsable, manejo de datos, guiones de actuación para escalación
- Bóveda de memoria: grafo de conocimiento persistente y enlazado (decisiones, patrones, preferencias)
- Guía para facilitadores: ejecuta el dojo como un taller de medio día o de varias semanas
- Scripts de PowerShell en `scripts/` para configuración, verificación y promoción de lecciones

---

## El Flujo de Trabajo Obligatorio

Cada tarea de Cowork no trivial sigue este flujo: sin omitir pasos, sin improvisar:

```
CLARIFY → PLAN → DRAFT → REVIEW → REFINE → SHIP → LEARN
```

| # | Habilidad | Propósito |
|---|---|---|
| 1 | clarify-the-ask | Reformular la solicitud, exponer suposiciones, acordar el entregable |
| 2 | plan-before-prompt | Desglosar el trabajo antes de iniciar una sesión de Copilot |
| 3 | drafting-with-copilot | Generar el primer borrador con un contexto fundamentado |
| 4 | reviewing-output | Inspección crítica: hechos, tono, omisiones, sesgos |
| 5 | refining-iteratively | Seguimientos específicos, no prompts vagos como "mejóralo" |
| 6 | shipping-the-deliverable | Verificaciones finales: citas, sensibilidad, ajuste al público |
| 7 | learn-from-every-session | Registrar lo que funcionó, promover patrones repetibles |

---

## Conjuntos de Habilidades

- [skills/](./skills) — Carpetas individuales de habilidades (kata + waza + kumite + dō)
- [agents/](./agents) — Personas de agentes de cowork para diferentes roles
- [scenarios/](./scenarios) — Escenarios integrales por función (RR. HH., Finanzas, Ventas, GP)
- [prompts/](./prompts) — Patrones de prompts y una biblioteca reutilizable
- [skills.md](./skills.md) — Índice maestro — descubierto automáticamente por Copilot
- [spec/](./spec) — La especificación de las Habilidades de Cowork
- [template/](./template) — Plantilla inicial para crear nuevas habilidades

---

## Core Kata — 基本型

Habilidades conductuales que gobiernan *cómo* piensa un trabajador del conocimiento con Copilot.

| Habilidad | Cinturón |
|---|---|
| [clarify-the-ask](./skills/clarify-the-ask/SKILL.md) | 🥋 Reformula la solicitud antes de generar el prompt |
| [plan-before-prompt](./skills/plan-before-prompt/SKILL.md) | 🥋 Planifica el entregable antes de abrir Copilot |
| [verify-before-send](./skills/verify-before-send/SKILL.md) | 🥋 Nunca envíes salidas de Copilot sin leerlas |
| [cite-your-sources](./skills/cite-your-sources/SKILL.md) | 🥋 Fundamenta cada afirmación en un artefacto referenciable |
| [protect-sensitive-info](./skills/protect-sensitive-info/SKILL.md) | 🥋 Saber qué no pegar, compartir o mostrar |
| [learn-from-every-session](./skills/learn-from-every-session/SKILL.md) | 🥋 Registra lecciones → promueve patrones |

## Flow Waza — 流れ技

Habilidades que orquestan el flujo de trabajo obligatorio.

| Habilidad | |
|---|---|
| [intent-framing](./skills/intent-framing/SKILL.md) | Define audiencia, resultado, formato y limitaciones |
| [context-gathering](./skills/context-gathering/SKILL.md) | Incorpora los archivos, hilos y personas correctos |
| [drafting-with-copilot](./skills/drafting-with-copilot/SKILL.md) | Generación inicial con contexto fundamentado |
| [reviewing-output](./skills/reviewing-output/SKILL.md) | Crítica estructurada: hechos, tono, lagunas, sesgos |
| [refining-iteratively](./skills/refining-iteratively/SKILL.md) | Seguimientos específicos, no "hazlo de nuevo" |
| [shipping-the-deliverable](./skills/shipping-the-deliverable/SKILL.md) | Puerta de control de calidad final antes de enviar |

## Practical Kumite — 実践組手

Habilidades específicas para las tareas más comunes del trabajo de conocimiento.

| Habilidad | |
|---|---|
| [meeting-prep](./skills/meeting-prep/SKILL.md) | Breve, agenda, materiales previos a partir de contexto disperso |
| [meeting-recap](./skills/meeting-recap/SKILL.md) | Decisiones, acciones, responsables — no transcripciones |
| [email-triage](./skills/email-triage/SKILL.md) | Clasificación, borradores de respuestas, escalación limpia |
| [document-summarization](./skills/document-summarization/SKILL.md) | Resúmenes fieles con el nivel de detalle adecuado |
| [research-synthesis](./skills/research-synthesis/SKILL.md) | Síntesis multisource con citas rastreables |
| [decision-memo](./skills/decision-memo/SKILL.md) | Contexto, opciones, recomendación, riesgos |
| [status-update](./skills/status-update/SKILL.md) | Informes de estado adaptados al público (directivos, equipo, interesados) |
| [internal-comms](./skills/internal-comms/SKILL.md) | Actualizaciones 3P, boletines, preguntas frecuentes, actualizaciones de liderazgo/incidentes |
| [doc-coauthoring](./skills/doc-coauthoring/SKILL.md) | Documentos estructurados largos en tres etapas con pruebas de lectura en frío |

## Office Kumite — M365 ファイル

Habilidades de superficie de entregables para Word, Excel, PowerPoint y PDF.

| Habilidad | |
|---|---|
| [word-authoring](./skills/word-authoring/SKILL.md) | Estilos, control de cambios, comentarios, estructura por secciones |
| [excel-analysis](./skills/excel-analysis/SKILL.md) | Fórmulas, tablas dinámicas, gráficos, conciliaciones |
| [deck-building](./skills/deck-building/SKILL.md) | PowerPoint basado primero en storyboard con disciplina de plantilla |
| [pdf-extraction](./skills/pdf-extraction/SKILL.md) | Extracción limpia de texto, tablas y metadatos para contextualización |
| [brand-consistency](./skills/brand-consistency/SKILL.md) | Aplicación de tokens de marca de la organización en Word, PowerPoint, Teams y Viva |

## Connector Kumite — 連携

Habilidades respaldadas por Graph/conectores con secuencias de herramientas, guía de parámetros y errores conocidos.

| Habilidad | |
|---|---|
| [teams-connector](./skills/teams-connector/SKILL.md) | Canales, chats, transcripciones de reuniones, menciones |
| [outlook-connector](./skills/outlook-connector/SKILL.md) | Clasificación de correo, borradores, programación de calendario |
| [onedrive-connector](./skills/onedrive-connector/SKILL.md) | Archivos, alcance de compartición, etiquetas de sensibilidad |
| [planner-connector](./skills/planner-connector/SKILL.md) | Tareas, contenedores, consolidación de estados |
| [jira-connector](./skills/jira-connector/SKILL.md) | JQL, problemas, sprints, notas de lanzamiento |
| [confluence-connector](./skills/confluence-connector/SKILL.md) | CQL, páginas, registros de decisiones, guiones operativos |
| [connector-builder](./skills/connector-builder/SKILL.md) | Diseñar/revisar un conector personalizado o servidor MCP para Copilot |

## Multi-Agent Cowork — 共働

Patrones para trabajar *con múltiples agentes de Copilot* y humanos juntos.

| Habilidad | |
|---|---|
| [agent-handoff](./skills/agent-handoff/SKILL.md) | Transferir contexto de forma limpia entre agentes |
| [agent-orchestration](./skills/agent-orchestration/SKILL.md) | Secuenciar agentes especializados alrededor de un objetivo |
| [human-in-the-loop](./skills/human-in-the-loop/SKILL.md) | Dónde los humanos deben aprobar, editar o intervenir |

## Meta Dō — 道

| Habilidad | |
|---|---|
| [skill-creator](./skills/skill-creator/SKILL.md) | Meta-habilidad para crear nuevas habilidades del dojo |
| [writing-skills](./skills/writing-skills/SKILL.md) | Plantilla SKILL.md + cumplimiento de especificación |

---

## Personas Especializadas de Cowork

Personas de agentes en [agents/](./agents) — combina habilidades relevantes para un rol:

| Persona | Combina |
|---|---|
| [analyst](./agents/analyst.md) | research-synthesis + document-summarization + decision-memo |
| [project-coordinator](./agents/project-coordinator.md) | meeting-prep + meeting-recap + status-update |
| [comms-lead](./agents/comms-lead.md) | drafting-with-copilot + reviewing-output + ajuste de audiencia |
| [people-manager](./agents/people-manager.md) | Preparación 1:1, borradores de retroalimentación, memorándums de decisión |
| [executive-assistant](./agents/executive-assistant.md) | email-triage + meeting-prep + informes breves |

---

## Paquetes de Escenarios

Recorridos integrales en [scenarios/](./scenarios):

- [RR. HH.](./scenarios/hr/scenario.md) — Planes de incorporación, preparación de evaluaciones de desempeño, preguntas sobre políticas
- [Finanzas](./scenarios/finance/scenario.md) — Comentarios de desviaciones, materiales previos para junta, respuestas a auditorías
- [Ventas](./scenarios/sales/scenario.md) — Informes de cuentas, borradores de propuestas, presentaciones QBR
- [Gestión de Proyectos](./scenarios/project-management/scenario.md) — Estados, registros de riesgos, preparación de comité directivo
- [Legal](./scenarios/legal/scenario.md) — Clasificación de NDAs, revisión en línea multilateral, síntesis de estado del viernes

---

## Gobernanza

Requisitos no negociables en [governance/](./governance):

- [responsible-ai.md](./governance/responsible-ai.md) — Equidad, transparencia, rendición de cuentas
- [data-handling.md](./governance/data-handling.md) — Qué pegar y qué nunca hacer
- [escalation.md](./governance/escalation.md) — Cuándo involucrar a un humano, legal o seguridad

---

## Guía para Facilitadores

Ejecuta el dojo como un taller — consulta [facilitator/workshop-guide.md](./facilitator/workshop-guide.md) y [facilitator/agendas/half-day.md](./facilitator/agendas/half-day.md).

---

## Bóveda de Memoria 🧠

El directorio `memory/` es el grafo de conocimiento persistente del equipo: decisiones, patrones, preferencias, registros de sesiones. Markdown plano + frontmatter YAML, consultable por cualquier agente.

```
memory/
├── INDEX.md
├── decisions/_template.md
├── patterns/_template.md
├── preferences/_template.md
└── sessions/_template.md
```

---

## Ingresa al Dojo

1. Copia este repositorio (o haz un fork) en el espacio de tu equipo.
2. Coloca `skills.md` y `.github/copilot-instructions.md` donde Copilot pueda descubrirlos.
3. Ejecuta `pwsh scripts/init.ps1` — genera `tasks/todo.md` y `tasks/lessons.md`.
4. Elige un [escenario](./scenarios/) y ejecútalo de principio a fin con tu equipo.
5. Registra lecciones después de cada sesión. Promueve 3 o más recurrencias a [memory/patterns/](./memory/patterns/).
6. Crea tus propias habilidades con [template/SKILL.md](./template/SKILL.md).

---

## ¿Por qué Capacitar a tus Compañeros?

Usuarios de Copilot no capacitados:

- Pegan solicitudes vagas y aceptan la primera respuesta
- Envían alucinaciones porque nadie verificó las citas
- Filtran contenido sensible en prompts que no deberían
- Repiten los mismos errores en todos los equipos
- Tratan a Copilot como una caja mágica de respuestas en lugar de un compañero de trabajo

Los compañeros de trabajo de Copilot capacitados operan como profesionales experimentados: aclaran la solicitud, planifican el entregable, redactan con contexto fundamentado, verifican la salida, entregan con confianza y aprenden en cada ronda.

---

## Contribuir

Consulta [CONTRIBUTING.md](./CONTRIBUTING.md).

## Licencia

[MIT](./LICENSE)

Algunas habilidades son traducciones con voz original de habilidades Apache-2.0 de
[anthropics/skills](https://github.com/anthropics/skills); consulta [NOTICE.md](./NOTICE.md)
para atribuciones.

⭐ Dale estrella a este dojo si ya estás cansado de ver a tu equipo copiar y pegar prompts. Hazle fork, capacita a tus compañeros y gana tu cinturón.
