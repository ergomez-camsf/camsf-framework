# Transformaciones del ejemplo Healthcare

Este ejemplo ilustra la trazabilidad conceptual entre un modelo especificado mediante el DSL de CAMS-F, los conceptos representados en el metamodelo y los artefactos que podrían derivarse mediante transformaciones Modelo a Modelo (M2M) y Modelo a Texto (M2T).

## 1. Transformación Modelo a Modelo (M2M)

El modelo DSL puede representarse mediante una estructura interna basada en el metamodelo CAMS-F. La siguiente correspondencia muestra cómo los principales elementos del DSL se relacionan con los conceptos del framework.

### Objetos contextuales

Patient

↓

ContextEntity

### Características contextuales

PatientLocation
HeartRate
Connectivity

↓

ContextFeatures

### Sensores

GPS
WearableSensor

↓

ConcreteSensors

### Servicios

EmergencyAlert
PatientMap

↓

Services

### Reglas

DetectEmergency
ShowPatientLocation

↓

AdaptationRules

---

## 2. Modelo Intermedio Esperado

```text
ContextModel
 ├── Patient
 ├── ContextFeatures
 │    ├── PatientLocation
 │    ├── HeartRate
 │    └── Connectivity
 ├── Sensors
 │    ├── GPS
 │    └── WearableSensor
 ├── Services
 │    ├── EmergencyAlert
 │    └── PatientMap
 └── Rules
      ├── DetectEmergency
      └── ShowPatientLocation
```

Este modelo intermedio representa los conceptos definidos en el DSL utilizando la estructura conceptual del framework CAMS-F.

---

## 3. Transformación Modelo a Texto (M2T)

A partir del modelo CAMS-F es posible derivar artefactos Flutter que implementen la funcionalidad especificada en el modelo.

| Elemento CAMS-F | Artefacto derivado esperado        |
| --------------- | ---------------------------------- |
| Patient         | patient.dart                       |
| HeartRate       | health_provider.dart               |
| GPS             | gps_service.dart                   |
| WearableSensor  | wearable_service.dart              |
| EmergencyAlert  | firebase_notification_service.dart |
| PatientMap      | patient_map_screen.dart            |
| DetectEmergency | emergency_rules.dart               |

---

## 4. Artefactos Derivados Esperados

```text
generated/
├── models/
│   └── patient.dart
│
├── services/
│   ├── gps_service.dart
│   ├── wearable_service.dart
│   └── firebase_notification_service.dart
│
├── screens/
│   └── patient_map_screen.dart
│
└── rules/
    └── emergency_rules.dart
```

---

## 5. Aplicación Resultante

La aplicación derivada permite:

* Monitorear la frecuencia cardíaca del paciente.
* Obtener la ubicación mediante GPS.
* Detectar situaciones críticas.
* Generar alertas médicas.
* Mostrar la ubicación del paciente utilizando Google Maps.
* Integrar servicios de notificación basados en Firebase.

---

### Nota

Este ejemplo documenta conceptualmente la trazabilidad entre el DSL, el metamodelo CAMS-F y los artefactos de aplicación que podrían derivarse mediante transformaciones M2M y M2T. Su objetivo es ilustrar el proceso de generación propuesto por el framework y facilitar la comprensión de los conceptos utilizados en la tesis.

