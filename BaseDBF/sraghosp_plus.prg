PROCEDURE Main()

cls
* sraghosp_plus.exe - CSIS Software 2020.
* Deve ser compilado no Harbour versão 3.0 - hbmk2 sraghosp_plus hbct.hbc

set color to bg+/
@ 1,0 say "******************************************************************"
@ 2,0 say "* sraghosp_plus.exe - CSIS Software 2020.                        *"
@ 3,0 say "*                                                                *"
@ 4,0 say "* Compilado no Harbour versao 3.0 - hbmk2 sraghosp_plus hbct.hbc *"
@ 5,0 say "******************************************************************"

set color to g+/
* Configurndo variaveis de ambiente.
set century on
set date british

@ 7,0 say "Iniciando processo..."
@ 8,0 say "Passo 1 de 32 - Criando campos extras..."
* Cria campos extras na tabela sraghosp.dbf.

close all
cDBFFile = "c:\sivepgripe\basedbf\sraghosp.dbf"
cDBFFile2 = "c:\sivepgripe\basedbf\sraghosp2.dbf"

* Copia a estrutura do arquivo "sraghosp.dbf" e acrescenta campos novos.
	   use ( cDBFFile ) new
	   aStruct := dbStruct( cDBFFile )
	   aAdd( aStruct, { "dt_notifi2", "D", 8, 0 } ) //1
	   aAdd( aStruct, { "dt_sin_pr2", "D", 8, 0 } ) //2
	   aAdd( aStruct, { "dt_nasc2", "D", 8, 0 } ) //3
	   aAdd( aStruct, { "dt_ut_dos2", "D", 8, 0 } ) //4
   	   aAdd( aStruct, { "dt_vac_ma2", "D", 8, 0 } ) //5
	   aAdd( aStruct, { "dt_doseun2", "D", 8, 0 } ) //6
	   aAdd( aStruct, { "dt_1_dose2", "D", 8, 0 } ) //7
	   aAdd( aStruct, { "dt_2_dose2", "D", 8, 0 } ) //8
   	   aAdd( aStruct, { "dt_antivi2", "D", 8, 0 } ) //9
	   //aAdd( aStruct, { "dt_intern2", "D", 8, 0 } ) 
	   aAdd( aStruct, { "dt_entuti2", "D", 8, 0 } ) //10
	   aAdd( aStruct, { "dt_saidut2", "D", 8, 0 } ) //11
   	   aAdd( aStruct, { "dt_raiox2", "D", 8, 0 } ) //12	   
	   aAdd( aStruct, { "dt_coleta2", "D", 8, 0 } ) //13
	   aAdd( aStruct, { "dt_pcr2", "D", 8, 0 } ) //14
	   aAdd( aStruct, { "dt_evoluc2", "D", 8, 0 } ) //15
   	   aAdd( aStruct, { "dt_encerr2", "D", 8, 0 } ) //16
	   //aAdd( aStruct, { "dt_digita2", "D", 8, 0 } )
	   aAdd( aStruct, { "dt_vgm2", "D", 8, 0 } ) //17
	   aAdd( aStruct, { "dt_rt_vgm2", "D", 8, 0 } ) //18
	   aAdd( aStruct, { "dt_tomo2", "D", 8, 0 } ) //19
   	   aAdd( aStruct, { "dt_res_an2", "D", 8, 0 } ) //20   
	   aAdd( aStruct, { "dt_co_sor2", "D", 8, 0 } ) //21
	   aAdd( aStruct, { "dt_res2", "D", 8, 0 } ) //22
	   aAdd( aStruct, { "reg_us", "C", 2, 0 } ) //23
	   aAdd( aStruct, { "cod_pais", "C", 3, 0 } ) //24
	   //aAdd( aStruct, { "nm_pais", "C", 70, 0 } )
	   aAdd( aStruct, { "reg_us_res", "C", 2, 0 } ) //25
	   aAdd( aStruct, { "co_ps_vgm2", "C", 3, 0 } ) //26    
	   aAdd( aStruct, { "cd_uf_hosp", "C", 2, 0 } ) //27  	   
	   aAdd( aStruct, { "cod_tomog", "C", 1, 0 } ) //28	   
	   aAdd( aStruct, { "tp_tes_a2", "C", 1, 0 } ) //29
	   aAdd( aStruct, { "tp_am_sor2", "C", 1, 0 } ) //30
	   aAdd( aStruct, { "tp_sor2", "C", 1, 0 } ) //31
	   
* Cria uma tabela nova a partir da estrutura da tabela selecionada como arquivo de entrada.
* A tabela nova já contém os campos criados pela aplicação.
	   dbCreate( (cDBFFile2 ) , aStruct )	   
	   close

* Transferindo os dados da tabela original para a tabela recem criada.
	   use ( cDBFFile2 ) new
	   append from ( cDBFFile )
	   close

use "c:\sivepgripe\basedbf\sraghosp2.dbf"

//1
@ 9,0 say "Passo 2 de 32 - Atualizando campo dt_notifi2..."
do while .not. eof()
dDateX1 := ctod(dt_notific)
replace dt_notifi2 with dDateX1
skip
enddo

//2
@ 10,0 say "Passo 3 de 32 - Atualizando campo dt_sin_pr2..."
goto top
do while .not. eof()
dDateX2 := ctod(dt_sin_pri)
replace dt_sin_pr2 with dDateX2
skip
enddo

//3
@ 11,0 say "Passo 4 de 32 - Atualizando campo dt_nasc2..."
goto top
do while .not. eof()
dDateX3 := ctod(dt_nasc)
replace dt_nasc2 with dDateX3
skip
enddo

//4
@ 12,0 say "Passo 5 de 32 - Atualizando o campo dt_ut_dos2..."
goto top
do while .not. eof()
dDateX4 := ctod(dt_ut_dose)
replace dt_ut_dos2 with dDateX4
skip
enddo

//5
@ 13,0 say "Passo 6 de 32 - Atualizando o campo dt_vac_ma2..."
goto top
do while .not. eof()
dDateX5 := ctod(dt_vac_mae)
replace dt_vac_ma2 with dDateX5
skip
enddo

//6
@ 14,0 say "Passo 7 de 32 - Atualizando o campo dt_doseun2..."
goto top
do while .not. eof()
dDateX6 := ctod(dt_doseuni)
replace dt_doseun2 with dDateX6
skip
enddo

//7
@ 15,0 say "Passo 8 de 32 - Atualizando o campo dt_1_dose2..."
goto top
do while .not. eof()
dDateX7 := ctod(dt_1_dose)
replace dt_1_dose2 with dDateX7
skip
enddo

//8
@ 16,0 say "Passo 9 de 32 - Atualizando o campo dt_2_dose2..."
goto top
do while .not. eof()
dDateX8 := ctod(dt_2_dose)
replace dt_2_dose2 with dDateX8
skip
enddo

//9
@ 17,0 say "Passo 10 de 32 - Atualizando o campo dt_antivi2..."
goto top
do while .not. eof()
dDateX9 := ctod(dt_antivir)
replace dt_antivi2 with dDateX9
skip
enddo

//10
@ 18,0 say "Passo 11 de 32 - Atualizado o campo dt_entuti2..."
goto top
do while .not. eof()
dDateX10 := ctod(dt_entuti)
replace dt_entuti2 with dDateX10
skip
enddo

//11
@ 19,0 say "Passo 12 de 32 - Atualizado o campo dt_saidut2..."
goto top
do while .not. eof()
dDateX11 := ctod(dt_saiduti)
replace dt_saidut2 with dDateX11
skip
enddo

//12
@ 20,0 say "Passo 13 de 32 - Atualizado o campo dt_raiox2..."
goto top
do while .not. eof()
dDateX12 := ctod(dt_raiox)
replace dt_raiox2 with dDateX12
skip
enddo

//13
@ 21,0 say "Passo 14 de 32 - Atualizado o campo dt_coleta2..."
goto top
do while .not. eof()
dDateX13 := ctod(dt_coleta)
replace dt_coleta2 with dDateX13
skip
enddo

//14
@ 22,0 say "Passo 15 de 32 - Atualizado o campo dt_pcr2..."
goto top
do while .not. eof()
dDateX14 := ctod(dt_pcr)
replace dt_pcr2 with dDateX14
skip
enddo

//15
@ 23,0 say "Passo 16 de 32 - Atualizado o campo dt_evoluc2..."
goto top
do while .not. eof()
dDateX15 := ctod(dt_evoluca)
replace dt_evoluc2 with dDateX15
skip
enddo

//16
@ 24,0 say "Passo 17 de 32 - Atualizado o campo dt_encerr2..."
goto top
do while .not. eof()
dDateX16 := ctod(dt_encerra)
replace dt_encerr2 with dDateX16
skip
enddo

//17
@ 25,0 say "Passo 18 de 32 - Atualizado o campo dt_vgm2..."
goto top
do while .not. eof()
dDateX17 := ctod(dt_vgm)
replace dt_vgm2 with dDateX17
skip
enddo

//18
@ 26,0 say "Passo 19 de 32 - Atualizado o campo dt_rt_vgm2..."
goto top
do while .not. eof()
dDateX18 := ctod(dt_rt_vgm)
replace dt_rt_vgm2 with dDateX18
skip
enddo

//19
@ 27,0 say "Passo 20 de 32 - Atualizado o campo dt_tomo2..."
goto top
do while .not. eof()
dDateX19 := ctod(dt_tomo)
replace dt_tomo2 with dDateX19
skip
enddo

//20
@ 28,0 say "Passo 21 de 32 - Atualizado o campo dt_res_an2..."
goto top
do while .not. eof()
dDateX20 := ctod(dt_res_an)
replace dt_res_an2 with dDateX20
skip
enddo

//21
@ 29,0 say "Passo 22 de 32 - Atualizado o campo dt_co_sor2..."
goto top
do while .not. eof()
dDateX21 := ctod(dt_co_sor)
replace dt_co_sor2 with dDateX21
skip
enddo

//22
@ 30,0 say "Passo 23 de 32 - Atualizado o campo dt_res2..."
goto top
do while .not. eof()
dDateX22 := ctod(dt_res)
replace dt_res2 with dDateX22
skip
enddo

//23
@ 31,0 say "Passo 24 de 32 - Atualizado o campo reg_us..."
goto top
cCodeIs = ""
do while .not. eof()
switch (sg_uf_not)
case "RO"
cCodeIs = "11"
exit
case "AC"
cCodeIs = "12"
exit
case "AM"
cCodeIs = "13"
exit
case "RR"
cCodeIs = "14"
exit
case "PA"
cCodeIs = "15"
exit
case "AP"
cCodeIs = "16"
exit
case "TO"
cCodeIs = "17"
exit
case "MA"
cCodeIs = "21"
exit
case "PI"
cCodeIs = "22"
exit
case "CE"
cCodeIs = "23"
exit
case "RN"
cCodeIs = "24"
exit
case "PB"
cCodeIs = "25"
exit
case "PE"
cCodeIs = "26"
exit
case "AL"
cCodeIs = "27"
exit
case "SE"
cCodeIs = "28"
exit
case "BA"
cCodeIs = "29"
exit
case "MG"
cCodeIs = "31"
exit
case "ES"
cCodeIs = "32"
exit
case "RJ"
cCodeIs = "33"
exit
case "SP"
cCodeIs = "35"
exit
case "PR"
cCodeIs = "41"
exit
case "SC"
cCodeIs = "42"
exit
case "RS"
cCodeIs = "43"
exit
case "MS"
cCodeIs = "50"
exit
case "MT"
cCodeIs = "51"
exit
case "GO"
cCodeIs = "52"
exit
case "DF"
cCodeIs = "53"
exit
otherwise
cCodeIs = ""
endswitch

replace reg_us with cCodeIs
skip
enddo

//24
@ 32,0 say "Passo 25 de 32 - Atualizado o campo cod_pais..."
goto top
do while .not. eof()
cStartCode := co_pais
nStartCode = val(cStartCode)
if nStartCode <= 9
cFinalCode := STUFF(cStartCode, 0, 0, "00")
endif
if nStartCode > 9 .and. nStartCode <= 99
cFinalCode := STUFF(cStartCode, 0, 0, "0")
endif
if nStartCode >= 100
cFinalCode := cStartCode
endif
replace cod_pais with cFinalCode
skip
enddo

//25
@ 33,0 say "Passo 26 de 32 - Atualizado o campo reg_us_res..."
goto top
cCodeIs2 = ""
do while .not. eof()
switch (sg_uf)
case "RO"
cCodeIs2 = "11"
exit
case "AC"
cCodeIs2 = "12"
exit
case "AM"
cCodeIs2 = "13"
exit
case "RR"
cCodeIs2 = "14"
exit
case "PA"
cCodeIs2 = "15"
exit
case "AP"
cCodeIs2 = "16"
exit
case "TO"
cCodeIs2 = "17"
exit
case "MA"
cCodeIs2 = "21"
exit
case "PI"
cCodeIs2 = "22"
exit
case "CE"
cCodeIs2 = "23"
exit
case "RN"
cCodeIs2 = "24"
exit
case "PB"
cCodeIs2 = "25"
exit
case "PE"
cCodeIs2 = "26"
exit
case "AL"
cCodeIs2 = "27"
exit
case "SE"
cCodeIs2 = "28"
exit
case "BA"
cCodeIs2 = "29"
exit
case "MG"
cCodeIs2 = "31"
exit
case "ES"
cCodeIs2 = "32"
exit
case "RJ"
cCodeIs2 = "33"
exit
case "SP"
cCodeIs2 = "35"
exit
case "PR"
cCodeIs2 = "41"
exit
case "SC"
cCodeIs2 = "42"
exit
case "RS"
cCodeIs2 = "43"
exit
case "MS"
cCodeIs2 = "50"
exit
case "MT"
cCodeIs2 = "51"
exit
case "GO"
cCodeIs2 = "52"
exit
case "DF"
cCodeIs2 = "53"
exit
otherwise
cCodeIs2 = ""
endswitch

replace reg_us_res with cCodeIs2
skip
enddo

//26
@ 34,0 say "Passo 27 de 32 - Atualizado o campo co_ps_vgm2..."
goto top
do while .not. eof()
cStartCode2 := co_ps_vgm
nStartCode2 = val(cStartCode2)
if nStartCode2 <= 9
cFinalCode2 := STUFF(cStartCode2, 0, 0, "00")
endif
if nStartCode2 > 9 .and. nStartCode2 <= 99
cFinalCode2 := STUFF(cStartCode2, 0, 0, "0")
endif
if nStartCode2 >= 100
cFinalCode2 := cStartCode2
endif
replace co_ps_vgm2 with cFinalCode2
skip
enddo

//27
@ 35,0 say "Passo 28 de 32 - Atualizado o campo cd_uf_hosp..."
goto top
cCodeIs3 = ""
do while .not. eof()
switch (sg_uf_inte)
case "RO"
cCodeIs3 = "11"
exit
case "AC"
cCodeIs3 = "12"
exit
case "AM"
cCodeIs3 = "13"
exit
case "RR"
cCodeIs3 = "14"
exit
case "PA"
cCodeIs3 = "15"
exit
case "AP"
cCodeIs3 = "16"
exit
case "TO"
cCodeIs3 = "17"
exit
case "MA"
cCodeIs3 = "21"
exit
case "PI"
cCodeIs3 = "22"
exit
case "CE"
cCodeIs3 = "23"
exit
case "RN"
cCodeIs3 = "24"
exit
case "PB"
cCodeIs3 = "25"
exit
case "PE"
cCodeIs3 = "26"
exit
case "AL"
cCodeIs3 = "27"
exit
case "SE"
cCodeIs3 = "28"
exit
case "BA"
cCodeIs3 = "29"
exit
case "MG"
cCodeIs3 = "31"
exit
case "ES"
cCodeIs3 = "32"
exit
case "RJ"
cCodeIs3 = "33"
exit
case "SP"
cCodeIs3 = "35"
exit
case "PR"
cCodeIs3 = "41"
exit
case "SC"
cCodeIs3 = "42"
exit
case "RS"
cCodeIs3 = "43"
exit
case "MS"
cCodeIs3 = "50"
exit
case "MT"
cCodeIs3 = "51"
exit
case "GO"
cCodeIs3 = "52"
exit
case "DF"
cCodeIs3 = "53"
exit
otherwise
cCodeIs3 = ""
endswitch

replace cd_uf_hosp with cCodeIs3
skip
enddo

//28
@ 36,0 say "Passo 29 de 32 - Atualizado o campo cod_tomog..."
goto top
do while .not. eof()
cCodeTomografia := str(tomo_res)
replace cod_tomog with alltrim(cCodeTomografia)
skip
enddo

//29
@ 37,0 say "Passo 30 de 32 - Atualizado o campo tp_tes_a2..."
goto top
do while .not. eof()
cTipoTeste := str(tp_tes_an)
replace tp_tes_a2 with alltrim(cTipoTeste)
skip
enddo

//30
@ 38,0 say "Passo 31 de 32 - Atualizado o campo tp_am_sor2..."
goto top
do while .not. eof()
cTipoAmostra := str(tp_am_sor)
replace tp_am_sor2 with alltrim(cTipoAmostra)
skip
enddo

//31
@ 39,0 say "Passo 32 de 32 - Atualizado o campo tp_sor2..."
goto top
do while .not. eof()
cTipoSorologia := str(tp_sor)
replace tp_sor2 with alltrim(cTipoSorologia)
skip
enddo

close

set color to gr+/
@ 40,0 say "Fim do processo..."
@ 41,0 say "Arquivo sraghosp2.dbf disponivel para uso."
HB_Alert("" , , , 10 )

return nil