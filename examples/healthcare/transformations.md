# Transformaciones del ejemplo Healthcare

Este ejemplo ilustra cómo un modelo CAMS-F puede ser transformado en artefactos de aplicación móvil.

## 1. Modelo de entrada DSL

El modelo `healthcare.dsl` define:

- Objeto consciente del contexto: `Patient`
- Características contextuales: `PatientLocation`, `HeartRate`, `Connectivity`
- Sensores: `GPS`, `WearableSensor`
- Servicios: `EmergencyAlert`, `PatientMap`
- Reglas de adaptación: `DetectEmergency`, `ShowPatientLocation`

## 2. Transformación Modelo a Modelo (M2M)

La transformación M2M toma el modelo DSL y genera una representación intermedia CAMS-F más cercana a la arquitectura de la aplicación.

| Elemento DSL | Elemento del modelo CAMS-F |
|-------------|-----------------------------|
| `awareObject Patient` | Entidad contextual `Patient` |
| `contextFeature HeartRate` | Variable contextual monitoreada |
| `sensor WearableSensor` | Sensor concreto asociado a datos biométricos |
| `service EmergencyAlert` | Servicio de notificación Firebase |
| `rule DetectEmergency` | Regla de adaptación contextual |

Resultado esperado:

```text
ContextModel
 ├── Entity: Patient
 ├── ContextFeatures:
 │   ├── PatientLocation
 │   ├── HeartRate
 │   └── Connectivity
 ├── Sensors:
 │   ├── GPS
 │   └── WearableSensor
 ├── Services:
 │   ├── EmergencyAlert
 │   └── PatientMap
 └── AdaptationRules:
     ├── DetectEmergency
     └── ShowPatientLocation
