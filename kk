#!/bin/bash

# Reemplaza COMMIT_HASH con el hash del commit que deseas inspeccionar
COMMIT_HASH="9c18430eaae419a458b514628237d55293a8f475"

# Lista todos los archivos en el commit y obtén sus tamaños
git ls-tree -r $COMMIT_HASH --name-only | while read filename; do
    # Obtén el tamaño del archivo
    size=$(git cat-file -s $COMMIT_HASH:$filename)
    # Imprime el tamaño y el nombre del archivo
    echo "$size $filename"
done

