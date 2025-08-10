#!/bin/bash
PROYECTO=ts_express_api
USUARIO=andresgarcia0313
CORREO=andresgarcia0313@gmail.com

git init
echo "🔀 Estableciendo la rama principal como 'main'"
git branch -m master main
echo "📦 Agregando archivos al repositorio"
git add .
git commit -m "Primer commit"
echo "🚀 Creando repositorio remoto en GitHub llamado '$PROYECTO' /n Conectandolo con local y subiendo cambios"
# git push -u origin main
gh repo create $PROYECTO --public --source=. --remote=origin --push
echo "✅ Proyecto '$PROYECTO' subido a https://github.com/$USUARIO/$PROYECTO"
xdg-open "$(git remote get-url origin | sed -e 's/^git@/https:\/\//' -e 's/com:/com\//' -e 's/\.git$//')" # Linux
# open      "$(git remote get-url origin | sed -e 's/^git@/https:\/\//' -e 's/com:/com\//' -e 's/\.git$//')"  # macOS
# start ""  "$(git remote get-url origin | sed -e 's/^git@/https:\/\//' -e 's/com:/com\//' -e 's/\.git$//')"  # Windows Git Bash
