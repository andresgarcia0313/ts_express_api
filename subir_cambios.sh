#!/bin/bash
# Uso: ./subir_cambios.sh "mensaje del commit"

MENSAJE="$1"

if [ -z "$MENSAJE" ]; then
    echo "⚠️  Debes indicar un mensaje de commit."
    echo "Ejemplo: ./subir_cambios.sh 'Agrega endpoint de usuarios'"
    exit 1
fi

echo "📦 Agregando cambios..."
git add .

echo "📝 Creando commit..."
git commit -m "$MENSAJE"

echo "🚀 Subiendo cambios a la rama actual..."
git push

echo "✅ Cambios subidos correctamente."
