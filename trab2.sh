
#!/bin/bash



echo -e "1 - Listar todo o conteúdo da pasta atual: \n2 - Ver o conteúdo do arquiv\n3 - Testar se uma máquina ip esta funcionando\n0 - sair "
read oper
if [ $oper -eq 1 ]  #verifica se a opcao escolhida e a 1
then
      ls

else
      if [ $oper -eq 2 ] # verifica se a opcao escolhida e a 2
         then
            echo "Qual o nome do arquivo: "
               read arq
               if [ -w $arq ] # -w serve para verificar se o arquivo e gravavel
               then
                  cat $arq # se for ele exibe o texto
               else
                  echo "Este não é um arquivo de texto" #senao diz q nao e
               fi
      else
      if [ $oper -eq 3 ] # verifica se a opcao escolhida e a 3
         then
             echo "Entre com o ip:"
             read numIP
             if [ ! -z $numIP ]; then
                 ping -c 1 $numIP
                 if [ $? -eq 0 ]; then
                     echo "Maquina esta retornando o ip"
                 else
                     echo "Maquina nao esta pingando"
                 fi
                 else
                     echo "IP Vazio"
                 fi
             fi
               
      fi
fi
if [ $oper -eq 0 ]
then
    exit
fi



