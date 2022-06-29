#!/bin/bash

varResposta=$(curl -s https://api.github.com/repos/$1/Git-Repo-Challenge | head -2 | tail -1 | tr -s ',' '.')

varSub='message'

if [[ "$varResposta" == *"$varSub"* ]];
then
  echo "Não foi possível encontra o repositório,algo deu errado"
else
  echo "Parabéns, encontramos o repositório."
fi  


