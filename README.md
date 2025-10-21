## 🚀 Taller Metodologico SQA -Santiago Vallejo
Este proyecto contiene la automatización de 2 casos de pruebas del taller metodologico.

---

## 🛠️ Tecnologías usadas
- Python 3.13
- Robot Framework 7.3.2
- SeleniumLibrary 6.7.1
- Selenium 4.35.0

---

## 📂 Estructura del proyecto
```
ProjectTaller/
│── .venv/                   # Entorno virtual de Python (PyCharm)
│── Reports_uno/             # Reportes y evidencias
│── Resources/               # Keywords y variables reutilizables
│    ├── keywords.robot
│    └── variables.robot
│── Test_Case_Front/         # Casos de prueba 
│    ├── Datapicker.robot    # Contine los dos scenarios de prueba
│  
│── requirements.txt          # Dependencias del proyecto
│── README.md                 # Este archivo
```

---

## ⚙️ Instalación

1. **Clonar el repositorio**
   ```bash
   git clone https://github.com/Dsanti221/taller-metodologico-sqa.git
   cd ProjectTaller
   ```

2. **Crear entorno virtual**
   ```bash
   python -m venv venv
   source venv/bin/activate      # Linux/Mac
   venv\Scripts\activate         # Windows
   ```

3. **Instalar dependencias**
   ```bash
   pip install -r requirements.txt
   ```

4. **Configurar ChromeDriver** ⚠️
   - Descarga la **misma versión de ChromeDriver que tu navegador Chrome** desde:  
     👉 [https://chromedriver.chromium.org/downloads](https://chromedriver.chromium.org/downloads)  
   - Ubica el ejecutable `chromedriver.exe` en la carpeta raíz del disco:  
     ```
     C:\chromedriver.exe
     ```
   - Verifica la instalación ejecutando en terminal:  
     ```bash
     chromedriver --version
     ```

---

## ▶️ Ejecución de pruebas

### 🔹 Reporte1 – Login y Registro
```bash
robot -d Reports_uno Test_Case_Front/Datepicker.robot
```
---

## 📊 Reportes y evidencias
Después de cada ejecución se generan automáticamente en las carpetas `Reports_uno`:  
- `log.html` → detalle paso a paso.  
- `report.html` → resumen de ejecución.  
- `output.xml` → salida técnica.  
- Capturas (`.png`) → evidencias visuales.  
  

Te recomiendo Abrir el archivo `report.html` en el navegador para revisar resultados detalladamente.

---

## 📌 Casos implementados
1. **Scenario:Apertura de Calendario**
    Given que el usuario este en el formulario con el campo y fecha visible
    When al usuario hace click en el campo fecha
    Then el sistema muestra un calendario emergente
2. **Scenario:Seleccion fecha valida**
    Given que el usuario este en el formulario con el campo y fecha visible
    And el usuario tiene el calendario abierto When al usuario selecciona una fecha dentro del rango permitido Then la fecha seleccionada se muestra en el campo con formato correcto
---

## 💡 Notas
- Proyecto desarrollado y probado en **PyCharm**.
- Asegúrate de que la versión de Chrome y ChromeDriver coincidan.

---

## 👨‍💻 Autor
- Cualquier pregunta no dudes en contactarme
- **ING.DAVID SANTIAGO VALLEJO GAITAN**  
Analista de automatizacion SQA
