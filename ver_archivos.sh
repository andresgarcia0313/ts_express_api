#!/bin/bash
# Script para imprimir el nombre y el contenido de todos los archivos del directorio actual

for archivo in *; do
    if [ -f "$archivo" ]; then
        echo "=== $archivo ==="
        cat "$archivo"
        echo "" # Línea en blanco para separar
    fi
done
