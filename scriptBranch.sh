#!/bin/bash

varResposta=$(curl -s https://api.github.com/repos/$1/Git-Repo-Challenge/branches/branch001 | head -2 | tail -1 | tr -s ',' '.')

varSub='branch001'

if [[ "$varResposta" == *"$varSub"* ]];
then
  echo "Parabéns, encontramos a branch."
else
  echo "Não encontramos a branch, algo deu errado"
fi  


