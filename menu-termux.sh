#!/bin/bash
x="termux"
menu ()
{
while true $x != "termux"
do
clear
echo "================================================"
echo "MENU DE INSTALAÇÂO PARA O TERMUX"
echo "Criado por: @who4reyou"
echo ""
echo "1)Instalar um programa"
echo""
echo "2)Remover um programa"
echo ""
echo "3)Atualizar o sitema"
echo ""
echo "4)Instalar dependências"
echo""
echo "5)Limpando programas defeituosos "
echo""
echo "6)Corrigir erros"
echo""
echo "7)Sair do programa"
echo ""
echo "================================================"

echo "Digite a opção desejada:"
read x
echo "Opção informada ($x)"
echo "================================================"

case "$x" in


    1)
      echo "Informe o nome do pacote para ser instalado?"
      read nome
      pkg install $nome
      sleep 5

echo "================================================"
;;
    2)
      echo "Informe o nome do pacote para ser removido?"
      read nome
      pkg remove --purge $nome
      sleep 5
echo "================================================"
;;
   3)
      echo "Atualizando sistema..."
      pkg update
      sleep 5
echo "================================================"
;;
    4)
       echo "Iniciando o processo..."
       pkg -f install
       sleep 5
echo "================================================"
;;
     5)
       echo "Corrigindo erros..."
       pkg autoremove
       sleep 5
echo "================================================"
;;
    6)
    echo "Reparando..."
    dpkg --configure -a
    sleep 5

echo "================================================"
 ;;
       7)
         echo "saindo..."
         sleep 5
         clear;
         exit;
echo "================================================"
;;

*)
        echo "Opção inválida!"
esac
done

}
menu