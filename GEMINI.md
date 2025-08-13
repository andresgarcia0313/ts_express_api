# Proyecto: mi-api

Este proyecto es una API de ejemplo construida con Node.js, Express y TypeScript.

## Requisitos

- Node.js (versión 16 o superior recomendada)
- npm (o un gestor de paquetes compatible como yarn o pnpm)

## Instalación

1.  Clona el repositorio (si aún no lo has hecho).
2.  Navega al directorio del proyecto.
3.  Instala las dependencias:

    ```bash
    npm install
    ```

## Scripts Disponibles

-   `npm run build`: Compila el código TypeScript a JavaScript, generando los archivos de salida en el directorio `dist/`.
-   `npm run clean`: Elimina el directorio `dist/`.
-   `npm run clean:win`: Elimina el directorio `dist/` en entornos Windows.
-   `npm start`: Inicia el servidor en modo de producción. Este comando ejecuta el código JavaScript compilado en `dist/server.js`. Asegúrate de haber ejecutado `npm run build` previamente.
-   `npm run dev`: Inicia el servidor en modo de desarrollo utilizando `ts-node-dev`. Este script recompila y reinicia automáticamente el servidor cuando detecta cambios en los archivos fuente (`.ts`).
-   `npm run devmodule`: Inicia el servidor en modo de desarrollo utilizando `node --loader ts-node/esm`. Útil para depuración con módulos ES.

## Uso

### Para desarrollo

Para iniciar el servidor en modo de desarrollo con recarga automática:

```bash
npm run dev
```

El servidor estará disponible en `http://localhost:3000` (o el puerto definido en la variable de entorno `PORT`).

### Para producción

1.  Primero, compila el proyecto:

    ```bash
    npm run build
    ```

2.  Luego, inicia el servidor:

    ```bash
    npm start
    ```

El servidor estará disponible en `http://localhost:3000` (o el puerto definido en la variable de entorno `PORT`).
