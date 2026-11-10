# Práctica 3 · Pronóstico de series de tiempo con machine learning (v6)

**3201 Modelos Inteligentes de Aprendizaje / 529 Redes Neuronales Modulares** · MyDCI · FIAD-UABC · Ciclo 2026-2

Esta carpeta es la práctica completa. **No cambie su estructura**: los cuadernos buscan `datos/` y `notebooks/`
dentro de la carpeta `P3_SeriesTiempo_v6`.

```
P3_SeriesTiempo_v6/
├── LEEME_PRACTICA3_v6.txt                      ← empiece aquí
├── Practica_3_Series_Tiempo_ML_v6_ALUMNO.pdf   ← manual (lectura)
├── Practica_3_Series_Tiempo_ML_v6_ALUMNO.docx  ← manual (para llenar tablas y pegar figuras)
├── notebooks/
│   ├── P3_E1_Video_XGBoost_Energia_PJME.ipynb        Fase 0 y Fase 1 (réplica del video)
│   ├── P3_E2_Datos_y_Caracteristicas_Est2038.ipynb   Fase 2
│   ├── P3_E3_Particion_y_Lineas_Base.ipynb           Fase 3
│   ├── P3_E4_Modelos_y_Ajuste.ipynb                  Fase 4
│   ├── P3_E5_Metricas_Curvas_Comparacion.ipynb       Fase 5
│   └── P3_E6_Extraclase_Validacion_Rigurosa.ipynb    Extraclase (Anexo P)
├── datos/
│   ├── PJME_hourly.csv                   consumo horario de PJM East (Kaggle, CC0)
│   └── DATOS_MENSUALES_EST_2038.xlsx     precipitación mensual, estación 2038 Presa Rodríguez
└── resultados/                           (la crean los cuadernos: figuras, tablas, artefactos y registro_P3.json)
```

## Cómo empezar

| Entorno | Pasos |
|---|---|
| **Google Colab** | Suba la carpeta `P3_SeriesTiempo_v6` completa a *Mi unidad* de Google Drive. Abra cada cuaderno desde Drive (doble clic → *Abrir con Google Colaboratory*). Ejecute primero el Bloque 0 y autorice el acceso a Drive. |
| **JupyterHub del laboratorio** | Copie la carpeta a su directorio `notebooks/`, abra cada cuaderno y elija el kernel *GPU AI ENV (ai_env)*. |
| **Jupyter local** | Python ≥ 3.11. Abra los cuadernos desde `notebooks/`; el Bloque 0 instala lo que falte (scikit-learn, xgboost, pandas, statsmodels, seaborn, scipy, openpyxl). |

Ejecute los cuadernos **en orden** (E1 → E5): cada etapa lee los archivos que guardó la anterior en
`resultados/artefactos/`. Huellas MD5 esperadas de los datos: `PJME_hourly.csv` = `5908f274ab73d5eaeb88654a8d238df3`;
`DATOS_MENSUALES_EST_2038.xlsx` = `79db93f4acdb00dee34cdd85c70d62ad`.

Dudas: einzunza@uabc.edu.mx y el tablón de Classroom del curso.
