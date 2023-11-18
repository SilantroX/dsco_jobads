# Anuncio Script para FiveM

Este script permite a los jugadores enviar anuncios con diferentes estilos según su trabajo en el servidor.

## Configuración

En el archivo `config.lua`, puedes personalizar la configuración del script. Aquí hay algunos detalles clave:

- `Config.Framework`: Establece el framework que estás utilizando (`esx` o `qbcore`).
- `Config.Command`: Especifica el comando para enviar un anuncio (`/anuncio` por defecto).
- `Config.Trabajos`: Define la configuración para cada trabajo. Puedes añadir más trabajos siguiendo la estructura proporcionada.

## Uso

1. Descarga el script y colócalo en la carpeta de recursos de tu servidor FiveM.
2. Añade `start anuncio` a tu archivo `server.cfg` para iniciar el script.
3. Ajusta la configuración en `config.lua` según tus preferencias y trabajos.
4. Reinicia tu servidor FiveM.

### Añadir más trabajos

Para añadir más trabajos, simplemente copia el bloque de configuración de un trabajo existente y modifica los valores según sea necesario. Asegúrate de seguir el mismo formato.

Ejemplo de añadir un nuevo trabajo "taxi":

```lua
taxi = {
    logo = "URL_DEL_LOGO", 
    colorfondo = "rgba(0, 128, 0, 0.7)", 
    colorbarra = "rgb(255, 255, 0)", 
    colorletra = "rgb(0, 0, 0)", 
},
```

Recuerda reiniciar tu servidor después de realizar cambios en la configuración.

## Ejemplo de Uso

En el juego, los jugadores pueden enviar un anuncio usando el comando `/anuncio`. El script utilizará la configuración del trabajo actual del jugador para mostrar un anuncio con el estilo correspondiente.

![Preview](https://streamable.com/pbvpoj)
![Discord](https://discord.gg/BTMEdqAr5H)
