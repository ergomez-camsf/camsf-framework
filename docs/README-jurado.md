# Material Complementario – Tesis Doctoral

## Descripción General

Este repositorio contiene los artefactos desarrollados durante la investigación doctoral relacionada con la construcción de aplicaciones móviles sensibles al contexto mediante enfoques basados en Model-Driven Development (MDD).

El material incluido permite consultar los principales componentes del framework CAMSF, incluyendo el lenguaje específico de dominio, los metamodelos, las transformaciones y los ejemplos utilizados para validar la propuesta.

---

## Estructura del Repositorio

| Componente          | Descripción                                                                                             |
| ------------------- | ------------------------------------------------------------------------------------------------------- |
| `dsl/`              | Definición del DSL textual desarrollado con Xtext.                                                      |
| `metamodelos/`      | Metamodelos Ecore utilizados durante la evolución del framework. Incluye versiones iniciales y finales. |
| `transformaciones/` | Transformaciones M2M y M2T implementadas para automatizar la generación de artefactos.                  |
| `examples/`         | Ejemplos representativos del uso del framework en distintos dominios.                                   |
| `docs/`             | Documentación complementaria, figuras y material de apoyo.                                              |

---

## Ejemplos Incluidos

El repositorio incluye tres ejemplos representativos:

### Tourism

Aplicación turística sensible al contexto basada en ubicación y servicios de mapas.

### Delivery

Aplicación para seguimiento de entregas utilizando GPS y monitoreo de paquetes.

### Healthcare

Aplicación de monitoreo de pacientes mediante sensores portables y generación de alertas de emergencia.

Cada ejemplo incluye:

* Modelo DSL.
* Representación gráfica.
* Descripción funcional.

---

## Trazabilidad del Enfoque

El proceso seguido por CAMSF es:

DSL Textual / DSL Gráfico
↓
Metamodelo Ecore
↓
Transformaciones Xtend
↓
Generación de Artefactos
↓
Aplicación Flutter

---

## Relación con la Tesis

Este repositorio constituye el material complementario utilizado para respaldar los resultados presentados en la tesis doctoral. Los artefactos incluidos corresponden a las distintas etapas de evolución del framework y fueron utilizados durante la validación experimental del enfoque.

---

## Observación sobre las Figuras

Los metamodelos se incluyen en formato editable y en imágenes de alta resolución para facilitar su visualización, dado que algunas figuras pueden perder definición al ser incorporadas en el documento PDF de la tesis.
