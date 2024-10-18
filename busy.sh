#!/bin/sh

sleep 30

# Verifica se o arquivo busy.tar existe
if [ -f "/busy.tar" ]; then
    echo "Carregando a imagem Docker a partir de busy.tar..."
    docker load -i /busy.tar
    echo "Imagem Docker carregada com sucesso."
else
    echo "Erro: o arquivo busy.tar não foi encontrado."
    exit 1
fi
