
![Flutter](https://img.shields.io/badge/Flutter-%2302569B.svg?style=for-the-badge&logo=Flutter&logoColor=white) ![Visual Studio Code](https://img.shields.io/badge/Visual%20Studio%20Code-0078d7.svg?style=for-the-badge&logo=visual-studio-code&logoColor=white) ![Android](https://img.shields.io/badge/Android-3DDC84?style=for-the-badge&logo=android&logoColor=white) ![iOS](https://img.shields.io/badge/iOS-000000?style=for-the-badge&logo=ios&logoColor=white) ![Dart](https://img.shields.io/badge/dart-%230175C2.svg?style=for-the-badge&logo=dart&logoColor=white) ![Figma](https://img.shields.io/badge/figma-%23F24E1E.svg?style=for-the-badge&logo=figma&logoColor=white) ![Git](https://img.shields.io/badge/git-%23F05033.svg?style=for-the-badge&logo=git&logoColor=white)
# Nombre del Proyecto

### Restaurant Pacheco y Compañía

# Equipo
* Arquitecto de Software([Fabian Pacheo](https://github.com/F4bian-pacheco))
* Desarrollador Principal([Cristobal Pacheco](https://github.com/devpachekun))
* Diseñador([Benjamin Retamal](https://github.com/Benigno00))

## Caso de Uso

### Descripción
Se implementará una funcionalidad de visualización de datos de empleados, menú y despensa en un sistema de gestión para un restaurante.

## Diseño

### Consideraciones de Diseño

El diseño de la interfaz se basa en la simplicidad y la facilidad de uso. Se utilizarán tres páginas principales: Empleados, Menú y Despensa. Cada página tendrá su propio widget para mostrar la información correspondiente.

### Maquetas

Se adjuntan maquetas para representar la estructura visual del proyecto.
![Maquetas de diseño](https://github.com/Desarrollo-Movil-UCM/Data-table-flutter/blob/dev/assets/image.png)

## Implementación

### Paso a Paso

#### 1. Creación de Estructura del Proyecto

```bash
lib/
|-- pages/
|   |-- empleados/
|   |   |-- empleados_page.dart
|   |   |-- empleados_widget.dart
|   |-- menu/
|   |   |-- menu_page.dart
|   |   |-- menu_widget.dart
|   |-- despensa/
|   |   |-- despensa_page.dart
|   |   |-- despensa_widget.dart
|   |-- home/
|       |-- home_page.dart
|-- widgets/
    |-- navdrawer.dart
```

#### 2. Desarrollo de Páginas y Widgets

En cada archivo `*_page.dart` y `*_widget.dart`, implementa la lógica y la interfaz correspondiente utilizando Flutter.

#### 3. Integración de Páginas en `NavDrawer`

Asegúrate de agregar las nuevas páginas al `NavDrawer` en `navdrawer.dart`.

```dart
ListTile(
    leading: const Icon(Icons.supervisor_account),
    title: const Text('Empleados'),
    onTap: () {
    // Navegar a la página de empleados
    Navigator.of(context).push(
        MaterialPageRoute(builder: (context) => EmpleadosPage()));
    },
    ),
ListTile(
    leading: const Icon(Icons.book),
    title: const Text('Menu'),
    onTap: () {
    // Navegar a la página de empleados
    Navigator.pop(context);
    },
    ),
ListTile(
    leading: const Icon(Icons.shopping_basket),
    title: const Text('Despensa'),
    onTap: () {
    // Navegar a la página de empleados
    Navigator.of(context).push(
        MaterialPageRoute(builder: (context) => DespensaPage()));
    },
    )
```

## Arquitectura

### Estructura de Archivos

La estructura de archivos propuesta sigue una organización modular por funcionalidad.

```bash
lib/
|-- pages/
|   |-- empleados/
|   |   |-- empleados_page.dart
|   |   |-- empleados_widget.dart
|   |-- menu/
|   |   |-- menu_page.dart
|   |   |-- menu_widget.dart
|   |-- despensa/
|   |   |-- despensa_page.dart
|   |   |-- despensa_widget.dart
|   |-- home/
|       |-- home_page.dart
|-- widgets/
    |-- widget1.dart
    |-- widget2.dart
```

### Arquitectura de Software

**Arquitectura sin BLoC o Provider - Justificación:**

Para la arquitectura de esta funcionalidad, hemos optado por una estructura más simple sin utilizar patrones de gestión de estado como BLoC o Provider. A continuación, se proporciona una justificación para esta elección:

1. **Tamaño del Proyecto:**
   - Para proyectos pequeños o medianos, la introducción de patrones complejos como BLoC puede aumentar la complejidad innecesariamente. La arquitectura propuesta busca mantener la simplicidad y facilidad de comprensión, especialmente si el proyecto no requiere una gestión intensiva del estado.

2. **Facilidad de Aprendizaje:**
   - Una arquitectura sin BLoC o Provider puede ser más fácil de aprender para desarrolladores nuevos en Flutter. Al evitar la introducción de conceptos más avanzados, se facilita la rampa de aprendizaje para aquellos que recién comienzan a trabajar con el framework.

3. **Menos Código Boilerplate:**
   - El uso de BLoC o Provider a menudo implica escribir más código boilerplate para establecer la infraestructura necesaria. En proyectos más pequeños, donde la complejidad no justifica el beneficio adicional, esto puede considerarse como un gasto innecesario de tiempo y recursos.

4. **Simplicidad de Mantenimiento:**
   - En proyectos más pequeños, la simplicidad es clave para el mantenimiento. Al evitar capas adicionales de abstracción, se reduce la posibilidad de errores y se facilita la corrección y mejora del código en el futuro.

5. **Menos Sobrecarga Mental:**
   - La introducción de patrones más complejos puede aumentar la sobrecarga mental, especialmente para desarrolladores menos experimentados. Optar por una estructura más simple puede mejorar la velocidad de desarrollo y reducir la posibilidad de malentendidos.

Es importante destacar que la elección entre utilizar o no BLoC o Provider depende de la naturaleza del proyecto y de los requisitos específicos. Para proyectos más grandes o que requieran una gestión más avanzada del estado, la adopción de patrones como BLoC o Provider puede ser más apropiada. La justificación aquí se basa en mantener la simplicidad y eficiencia para un proyecto de tamaño moderado.

## **Configuración del Proyecto**

### Librerías Necesarias:

Asegúrate de incluir las siguientes dependencias en tu archivo `pubspec.yaml`:

```yaml
dependencies:
  flutter:
    sdk: flutter
  data_table_2: ^4.0.2
  http: ^0.13.3 # Solo si planeas utilizar una API
```

Luego, ejecuta `flutter pub get` en tu terminal para descargar las dependencias.

### Puesta en Marcha de la Aplicación:

1. **Clonar el Repositorio:**
   ```bash
   git clone https://github.com/Desarrollo-Movil-UCM/Data-table-flutter
   ```

2. **Navegar al Directorio del Proyecto:**
   ```bash
   cd nombre_del_proyecto
   ```

3. **Obtener Dependencias:**
   ```bash
   flutter pub get
   ```

4. **Ejecutar la Aplicación:**
   ```bash
   flutter run
   ```

   Esto iniciará la aplicación en tu emulador o dispositivo conectado.

### Estructura del Proyecto:

La estructura del proyecto sigue la siguiente organización:

```bash
lib/
|-- pages/
|   |-- empleados/
|   |   |-- empleados_page.dart
|   |   |-- empleados_widget.dart
|   |-- menu/
|   |   |-- menu_page.dart
|   |   |-- menu_widget.dart
|   |-- despensa/
|   |   |-- despensa_page.dart
|   |   |-- despensa_widget.dart
|   |-- home/
|       |-- home_page.dart
|-- widgets/
    |-- navdrawer.dart
    |-- widget comunes
    ...
```

### Datos desde JSON (Assets):

1. **Colocar JSON en la Carpeta "assets":**
   Asegúrate de tener un archivo JSON (por ejemplo, `empleados.json`) en la carpeta `assets` de tu proyecto.

2. **Configurar `pubspec.yaml`:**
   Agrega la siguiente configuración en tu archivo `pubspec.yaml`:

   ```yaml
   flutter:
     assets:
       - assets/archivo.json
   ```

3. **Leer Datos desde JSON:**
   Modifica tu código para leer los datos desde el archivo JSON. Puedes utilizar `rootBundle` para cargar el archivo.
   
   ```dart

    List<dynamic> empleados = []; // Lista para almacenar los empleados

    // Método para cargar y parsear el JSON desde assets
    Future<void> cargarEmpleados() async {
        final String jsonData =
            await rootBundle.loadString('assets/empleados.json');

        final data = json.decode(jsonData);
        setState(() {
        empleados = data['empleados'];
        });
    }

   ```

### Datos desde API:

1. **Configurar `pubspec.yaml`:**
   Asegúrate de tener la dependencia `http` incluida en tu archivo `pubspec.yaml`.

2. **Hacer Solicitudes HTTP:**
   Utiliza el paquete `http` para realizar solicitudes HTTP y obtener datos desde la API.

   ```dart
   import 'package:http/http.dart' as http;

   Future<List<Map<String, dynamic>>> fetchDataFromAPI() async {
     final response = await http.get('URL_DE_LA_API');
     if (response.statusCode == 200) {
       final List<Map<String, dynamic>> data = /* Convertir datos JSON */;
       return data;
     } else {
       throw Exception('Error al cargar datos desde la API');
     }
   }
   ```

**¡Listo!** Ahora, tu aplicación puede cargar datos desde un archivo JSON en la carpeta "assets" o desde una API, según la configuración y necesidades de tu proyecto. Adaptar estas instrucciones según la estructura y configuración específicas de tu proyecto.
