#!/bin/bash

# Verifica si se proporcionó un archivo .tex
if [ -z "$1" ]; then
    echo "Error : No se ha proporcionado un archivo."
    echo "Ejemplo de uso: ./tex2svg.sh archivo.tex"
    exit 1
fi
echo  "Archivo recibido: $1"

# Archivo y rutas
TEXFILE="$(realpath "$1")"
BASENAME="$(basename "$TEXFILE" .tex)"
OUTPUTDIR="$(dirname "$TEXFILE")"
DVI="$OUTPUTDIR/$BASENAME.dvi"
SVG="$OUTPUTDIR/$BASENAME.svg"

# Verificar que el archivo tenga extensión .tex
if [[ "$TEXFILE" != *.tex ]]; then
    echo "Error: el archivo proporcionado no tiene extensión .tex."
    exit 1
fi

# Verificar que latex y dvisvgm estén instalados
for cmd in latex dvisvgm; do
    if ! command -v $cmd &> /dev/null; then
        echo "Error: $cmd no está instalado o no está en el PATH."
        exit 1
    fi
done

# Compilar el archivo .tex a DVI
echo "Compilando $TEXFILE a DVI..."
latex -interaction=nonstopmode -halt-on-error -output-directory="$OUTPUTDIR" "$TEXFILE" > /dev/null
if [ $? -ne 0 ]; then
    echo "Error al compilar el archivo LaTeX con latex."
    exit 1
fi

# Convertir DVI a SVG
echo "Convirtiendo DVI a SVG..."
dvisvgm --no-fonts "$DVI" "$SVG"

# Limpiar archivos intermedios
rm -f "$DVI" "$OUTPUTDIR/$BASENAME.aux" "$OUTPUTDIR/$BASENAME.log" "$OUTPUTDIR/$BASENAME.out"

echo "Conversión completada: $SVG"