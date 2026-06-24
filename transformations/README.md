# Transformaciones CAMS-F

Este directorio contiene una transformación Modelo a Texto (M2T) implementada en Xtend.

## Archivo principal

`generator_Xtend.xtend`

## Descripción

La transformación recorre el modelo generado a partir del DSL y produce artefactos Dart/Flutter. En particular, por cada `AwareObject` definido en el modelo se genera un archivo Dart con la estructura base del componente de seguimiento contextual.

## Flujo de generación

DSL CAMS-F  
↓  
Modelo EMF/Xtext  
↓  
Transformación Xtend  
↓  
Código Dart/Flutter  

## Fragmento principal

```xtend
override void doGenerate(Resource resource, IFileSystemAccess2 fsa) {
    val model = resource.contents.head as Model
    model.objects.forEach[obj | 
        fsa.generateFile(
            "lib/${obj.name.toLowerCase()}_tracker.dart",
            obj.generateDart
        )
    ]
}
