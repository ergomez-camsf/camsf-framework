# CAMSF
Context-Aware Mobile System Framework

CAMSF es un framework evolutivo basado en Model-Driven Development (MDD) para la construcción de sistemas móviles sensibles al contexto.

El proyecto integra:

Modelado de contexto mediante DSL textual (Xtext)
DSL gráfico (Sirius)
Metamodelado (Ecore)
Transformaciones M2M / M2T (Xtend)
Generación automática de código
Integración con aplicaciones móviles Flutter

El objetivo es facilitar la creación de aplicaciones móviles adaptativas mediante modelos de alto nivel.

Nota: Se ha optado por documentar el framework mediante los artefactos reales desarrollados durante la investigación (DSL, metamodelos, transformaciones y ejemplos), evitando incluir diagramas conceptuales que no formen parte de la tesis doctoral o de la implementación validada experimentalmente.

---

## 🧭 Arquitectura Conceptual de CAMSF

El framework sigue un flujo dirigido por modelos (MDD) basado en los artefactos desarrollados durante la investigación:

```text
DSL textual (Xtext)
        ↓
Metamodelo (Ecore)
        ↓
Representación gráfica (Sirius)
        ↓
Modelos de ejemplo
        ↓
Transformaciones Xtend
        ↓
Artefactos Dart / Flutter
```

El repositorio representa la evolución del DSL CAMS:

- Versión inicial: exploración conceptual del dominio.
- Versión final: refinamiento del metamodelo y validación experimental.
---


## 📚 Tesis Doctoral

Este repositorio contiene el material complementario utilizado en la evaluación de la tesis doctoral, incluyendo la definición del DSL, metamodelos, transformaciones y ejemplos utilizados para validar el enfoque propuesto.
El repositorio refleja la evolución del DSL CAMS desde su concepción inicial hasta la versión validada experimentalmente.

## 🧩 Componentes Principales del Proyecto

### ✔ DSL Textual (Xtext)
Definición formal del lenguaje para modelar sistemas context-aware.

- Gramática textual
- Parser y validación
- Infraestructura generada con Xtext
- 
## 🧩 Estructura del Repositorio
camsf-framework/
├── docs/                Documentacion y figuras
├── dsl/                 Definición Textual del DSL 
├── metamodelos/         Metamodelos Ecore Iniciales y Finales
├── transformaciones/    Transformaciones Model-to-Text 
├── examples/            Ejemplos
│   ├── tourism/         Ejemplo de turismo
│   ├── delivery/        Ejemplo de Delivery
│   └── healthcare/      Ejemplo de Healthcare
└── README.md

## 🧩 Componentes Principales del Proyecto

### ✔ DSL Textual (Xtext)
Definición formal del lenguaje para modelar sistemas context-aware.

- Gramática textual
- Parser y validación
- Infraestructura generada con Xtext

Ubicación:
xtext/
dsl/

---

### ✔ DSL Gráfico (Sirius)
Representación visual del DSL para facilitar el modelado conceptual.

Incluye:

- Diagramas context-aware
- Casos de estudio visuales
- Diseño inicial del lenguaje

---

### ✔ Metamodelos (Ecore)

Se incluyen dos versiones del metamodelo:
metamodelos/

├── inicial/
│ ├── cams_inicial.aird
│ ├── cams_inicial.model
│ └── cams_inicial.jpg

└── final/
├── cams_final.ecore
├── cams_final.aird
├── cams_final.genmodel
└── cams_final.jpg

- **Inicial:** concepción temprana del DSL gráfico.
- **Final:** versión refinada del metamodelo utilizada en el framework.

![Metamodelo CAMS](metamodel/final/cams_final.jpg)

---
### ✔ Transformaciones (Xtend)


El framework incluye transformaciones Modelo a Texto (M2T) implementadas mediante Xtend.

Ubicación:

transformations/
├── generator_Xtend.xtend
└── README.md

La transformación recorre los modelos generados a partir del DSL y produce artefactos Dart/Flutter mediante el mecanismo fsa.generateFile(...) provisto por Xtext.

Flujo de transformación:

DSL CAMS-F
        ↓
Modelo EMF/Xtext
        ↓
Transformación Xtend
        ↓
Código Dart/Flutter

Entre los artefactos derivados se incluyen componentes de monitoreo contextual, integración con Google Maps, servicios de notificación y estructuras base para aplicaciones Flutter sensibles al contexto.




### Ejemplos incluidos

```markdown
## Ejemplos Incluidos

El repositorio incluye tres ejemplos representativos utilizados para ilustrar el uso del framework CAMSF:

- Tourism: aplicación turística sensible al contexto basada en ubicación.
- Delivery: aplicación de seguimiento de entregas mediante GPS y servicios de monitoreo.
- Healthcare: aplicación de monitoreo de pacientes mediante sensores portables y alertas de emergencia.

Cada ejemplo incluye:

- Modelo DSL.
- Representación gráfica.
- Documentación descriptiva.

### ✔ Framework Flutter

Implementación móvil basada en Flutter para validar el enfoque MDD.

Características:

- Arquitectura context-aware
- Integración con servicios externos
- Generación parcial de código basada en modelos

---

## 🧠 Enfoque Model-Driven Development (MDD)

El flujo del framework sigue:
DSL Textual / Gráfico
↓
Metamodelo (Ecore)
↓
Transformaciones Xtend
↓
Generación de Código
↓
Aplicación Flutter

---

## 📦 Requisitos

- Eclipse Modeling Framework (EMF)
- Xtext
- Sirius
- Xtend
- Flutter SDK

---
## Reproducción de los Ejemplos

Para reproducir los ejemplos incluidos en el repositorio:

1. Importar los proyectos en Eclipse Modeling.
2. Cargar el metamodelo correspondiente.
3. Abrir o crear un modelo DSL.
4. Ejecutar las transformaciones Xtend.
5. Generar los artefactos Flutter.
6. Desplegar la aplicación generada.

## Artefactos Generados

El framework permite la generación automática de artefactos Flutter a partir de modelos de alto nivel.

Los artefactos generados pueden incluir:

- Pantallas Flutter.
- Servicios sensibles al contexto.
- Componentes de integración con Firebase.
- Estructuras de navegación.
- Lógica de adaptación basada en contexto.

## 🎓 Contribución Principal
La principal contribución de esta investigación es la definición y validación de un enfoque Model-Driven Development para sistemas móviles sensibles al contexto, mediante la creación de un DSL específico de dominio, su metamodelo asociado y un proceso automatizado de transformaciones que permite la generación de aplicaciones Flutter context-aware.


## 👨‍🔬 Autor

Proyecto desarrollado por **Estevan Gómez** como parte de la investigación académica y la Tesis Doctoral del **Doctorado en Ciencias Informáticas** de la **Universidad Nacional de La Plata (Argentina)**.

Líneas de investigación:
- Sistemas context-aware
- Desarrollo dirigido por modelos (Model-Driven Development)

---

## 📄 Licencia

MIT License



