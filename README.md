![Houlak: We develop first-class apps](https://houlak.com/assets/images/logos/hk-logo-color.svg)

[![Twitter](https://img.shields.io/badge/twitter-@houlakdev-blue.svg?style=flat-square)](https://twitter.com/houlakdev)

# Houlak Take-Home App Project

## Propuesta

Utilizando la [API de Spotify](https://developer.spotify.com/documentation/web-api/), se deberá crear una app que permita buscar y listar artistas, ver información relevante de los mismos y listar sus canciones más escuchadas. 

## Implementación
### Home: Listar artistas
Esta pantalla debe:
 - Mostrar un empty state de Bievenida y un buscador.
 - Tener un buscador que permita buscar únicamente por artista.
 - Listar los artistas encontrados a partir de la búsqueda, ordenando por mayor popularidad primero. Se debe de mostrar al menos una foto y el nombre del artista.
 - Permitir seleccionar/ir al detalle de un artista del listado.

### Detalle de un Artista
Esta pantalla debe:
- Mostrar información del artista relevante. Por ejemplo: Foto de cubierta, nombre, género musical.
- Listar las primeras 5 canciones más escuchadas.

## API
Los servicios a utilizar son los siguientes:

| Servicio | Link |
| ------ | ------ |
| Get search item | https://developer.spotify.com/console/get-search-item |
| Get artist | https://developer.spotify.com/console/get-artist|
| Get artist top tracks | https://developer.spotify.com/console/get-artist-top-tracks |

#### Alternativa para obtener Auth Token
Si no tiene una cuenta de Spotify propia para obtener un OAuth token, puede realizar lo siguiente:
1. Acceder a [Authorize Houlak Test Spotify](https://accounts.spotify.com/authorize?client_id=0e16d1a1ce0746bcbd50665a1f391bae&response_type=token&scope=&redirect_uri=https%3A%2F%2Fhoulak.com).  
2. Aceptar los permisos solicitados. Una vez acepte será redireccionado al sitio de Houlak. 
3. En la url del sitio de Houlak, aparecerá un parametro `access_token`. Puede utilizar ese token para consumir los servicios.


## Notas
- Se valorará el buen uso de git (commits, branches, etc.)
- Se pueden utilizar librerías de terceros
- Se valorará funcionalides extras agregadas
