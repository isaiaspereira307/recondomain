#!/bin/bash
for palavra in $(cat small.txt)
do
resposta=$(curl -s -o /dev/null -w "%{http_code}" $1/$palavra/)
resposta2=$(curl -s -o /dev/null -w "%{http_code}" $1/$palavra)
if [ $resposta == "200" ]
then
echo "Diretorio encontrado $palavra"
fi
if [ $resposta2 == "200" ]
then
echo "Arquivo encontrado $palavra"
fi
done
