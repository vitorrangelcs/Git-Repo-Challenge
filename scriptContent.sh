#!/bin/bash

varResposta=$(curl -s https://api.github.com/repos/$1/Git-Repo-Challenge/contents/README.md | head -2 | tail -1 | tr -s ',' '.')

varSub='README.md'

if [[ "$varResposta" == *"$varSub"* ]];
then
  echo "Parabéns encontramos o arquivo README.md"
else
  echo "Não encontramos o arquivo README.md"
fi  


