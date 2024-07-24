# Revisión de Modelo de Etiquetado en Datos de Audio DCASE 2018

## Integrantes
- Sebastián Luarte
- Joaquín Sotomayor

Este trabajo se enmarca dentro de la asignatura INFO343 Minería y Aprendizaje con Datos del Magister en Informática de la Universidad Austral de Chile. El objetivo es implementar y explicar uno de los modelos participantes en el desafío DCASE 2018, el cual consistió en evaluar diversos sistemas de etiquetado automático de una batería de audios. Más información sobre el desafío está disponible en el siguiente [enlace](http://dcase.community/challenge2018/task-general-purpose-audio-tagging).

## Datos
Los datos corresponden a audios de 300ms a 30s de duración, abarcando 41 clases distintas. Los datos pueden descargarse desde el siguiente [enlace](http://dcase.community/challenge2018/task-acoustic-scene-classification).

## Ejecución del Código

### 1. Preparar los datos

Se debe crear una carpeta llamada `Data` en la cual se descomprimirán los datos descargados del enlace anterior, obteniendo los siguientes archivos:
- Carpeta `audio_train` con 9473 audios
- Carpeta `audio_test` con 9400 audios
- Archivo `train.csv`
- Archivo `sample_submission.csv`

### 2. Instalar dependencias

El código está implementado en Python 3. Para instalar las librerías necesarias, use el archivo `requirements.txt`. Para instalarlo, ejecute:

#### Usando Conda
```sh
$ conda install --file requirements.txt
```

#### Usando Pip
```sh
$ pip install -r requirements.txt
```

### 3. Abrir el Jupyter Notebook

Finalmente, abra el archivo `Tarea.ipynb`, en el cual podrá ver la explicación y ejecutar el código.

**Advertencia:** El índice presente en el cuadernillo solo funciona correctamente al ejecutarse en un Jupyter Notebook (no en GitHub).