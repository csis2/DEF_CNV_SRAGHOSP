# DEF_CNV_SRAGHOSP
Arquivos de tabulação DEF/CNV para notificações SRAG Hospitalizado do SIVEP Gripe. Atualização para a ficha padrão de 27/07/2020 para notificação de SARS-COV-2.

## Como usar?

Primeiro, acesse a seção onde estão disponíveis os releases (seta vermelha 1).

![alt text](https://github.com/csis2/DEF_CNV_SRAGHOSP/blob/master/img/imagem01.jpg)

Escolha sempre a última versão disponível. A versão mais atual vem marcada com a legenda "Latest" (seta vermelha 2).

![](C:\Users\luizvirginio\Desktop\prints sivep gripe\imagem02.bmp)
![alt text](https://github.com/csis2/Covid19Tab/blob/master/img/release1.jpg)

Clique no link "SivepGripe.rar" e faça o download do arquivo.

![](C:\Users\luizvirginio\Desktop\prints sivep gripe\imagem03.bmp)
![alt text](https://github.com/csis2/Covid19Tab/blob/master/img/release1.jpg)

Descompacte o arquivo "SivepGripe.rar" utilizando um descompactador da sua preferência.

Utilizando o descompactador, será visualizado uma pasta com o nome "SivepGripe".

![](C:\Users\luizvirginio\Desktop\prints sivep gripe\imagem04.bmp)
![alt text](https://github.com/csis2/Covid19Tab/blob/master/img/release1.jpg)

Extraia a pasta inteira para dentro do disco local C.

![](C:\Users\luizvirginio\Desktop\prints sivep gripe\imagem05.bmp)
![alt text](https://github.com/csis2/Covid19Tab/blob/master/img/release1.jpg)

Após a descompactação o resultado deverá ficar como mostrado na figura acima.

Dentro da pasta "SivepGripe", a estrutura estará distribuída de acordo com a figura abaixo.

![](C:\Users\luizvirginio\Desktop\prints sivep gripe\imagem06.bmp)
![alt text](https://github.com/csis2/Covid19Tab/blob/master/img/release1.jpg)

Usando a aplicação "SivepGripe" (https://sivepgripe.saude.gov.br/sivepgripe/login.html), faça o download de um arquivo de exportação DBF. Salve o arquivo na subpasta "BaseDBF" mostrada acima.

Descompacte o arquivo baixado utilizando um descompactador de sua preferência e salve o arquivo resultante na subpasta "BaseDBF".

![](C:\Users\luizvirginio\Desktop\prints sivep gripe\imagem07.bmp)
![alt text](https://github.com/csis2/Covid19Tab/blob/master/img/release1.jpg)

O resultado da operação será parecido com o mostrado na figura acima.

Renomeie o arquivo DBF resultante da descompactação para "sraghosp.dbf".

![](C:\Users\luizvirginio\Desktop\prints sivep gripe\imagem08.bmp)
![alt text](https://github.com/csis2/Covid19Tab/blob/master/img/release1.jpg)

Uma vez renomeado, rode o arquivo "sraghosp_plus.exe", que também estará na subpasta "BaseDBF".

![](C:\Users\luizvirginio\Desktop\prints sivep gripe\imagem09.bmp)
![alt text](https://github.com/csis2/Covid19Tab/blob/master/img/release1.jpg)

Quando o script terminar, executando todos os passos, será criado um novo arquivo: "sraghosp2.dbf". Esse arquivo que deverá ser usado no Tabwin para fazer a tabulação dos dados do arquivo que o usuário baixou no SIVEP Gripe.

![](C:\Users\luizvirginio\Desktop\prints sivep gripe\imagem10.bmp)
![alt text](https://github.com/csis2/Covid19Tab/blob/master/img/release1.jpg)

![](C:\Users\luizvirginio\Desktop\prints sivep gripe\imagem11.bmp)
![alt text](https://github.com/csis2/Covid19Tab/blob/master/img/release1.jpg)

![](C:\Users\luizvirginio\Desktop\prints sivep gripe\imagem12.bmp)
![alt text](https://github.com/csis2/Covid19Tab/blob/master/img/release1.jpg)

## O que o pacote DEF_CNV_SRAGHOSP contém?

O pacote é principalmente formado por arquivos CNV/DEF extraídos do site do SIVEP Gripe (https://sivepgripe.saude.gov.br/sivepgripe/login.html). Alguns não sofreram nenhuma modificação, outros tiveram mudanças no conteúdo para se ajustarem à mudança ocorrida na última versão da ficha de SRAG Hospitalizado (27/07/2020), alguns arquivos foram criados, pois não existiam para alguns critérios que surgiram na ficha atual.

Além disso, foi criado um script (sraghosp_plus.exe) que ajusta o arquivo de exportação para utilização no Tabwin.

## Créditos

Os créditos pela criação dos arquivos CNV/DEF originais usados nesse projeto pertencem à Vigilância Epidemiológica do Rio Grande do Sul que os desenvolveu em maio/2019. Posteriormente, foi feita uma revisão dos arquivos pelo GT-Influenza do Ministério da Saúde, que depois disponibilizou os arquivos na rede nacional de Influenza.

## Nota para desenvolvedores

O arquivo executável que acompanha os demais arquivos desse projeto, foi desenvolvido usando a linguagem Harbour versão 3.0 (https://harbour.github.io/). 

## Segurança

Escaneando o arquivo executável que faz parte desse projeto no serviço online VirusTotal, não foi detectado conteúdo malicioso nele pelos antivírus mais conhecidos no  mercado, como o AVG, McAfee, Avast, Kapersky, Symantec, F-Secure etc.

Você também pode constatar a segurança do arquivo "sraghosp_plus.exe" utilizando o VirusTotal (https://www.virustotal.com/gui/) para fazer uma checagem desse arquivo, o serviço é online e gratuito.

