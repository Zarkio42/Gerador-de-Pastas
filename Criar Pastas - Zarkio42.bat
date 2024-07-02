@echo off

REM Obter a data atual no formato YYYYMMDDHHMMSS (por exemplo: 20240701123000)
for /f "skip=1 delims=" %%x in ('wmic os get localdatetime') do if not defined LocalDateTime set LocalDateTime=%%x

REM Extrair o dia, mês e ano da string YYYYMMDDHHMMSS
set dia=%LocalDateTime:~6,2%
set mes=%LocalDateTime:~4,2%
set ano=%LocalDateTime:~0,4%
set data=%LocalDateTime:~6,2%-%LocalDateTime:~4,2%

REM Converter o número do mês para o nome do mês
if %mes%==01 set nomeMes=01 - JANEIRO
if %mes%==02 set nomeMes=02 - FEVEREIRO
if %mes%==03 set nomeMes=03 - MARÇO
if %mes%==04 set nomeMes=04 - ABRIL
if %mes%==05 set nomeMes=05 - MAIO
if %mes%==06 set nomeMes=06 - JUNHO
if %mes%==07 set nomeMes=07 - JULHO
if %mes%==08 set nomeMes=08 - AGOSTO
if %mes%==09 set nomeMes=09 - SETEMBRO
if %mes%==10 set nomeMes=10 - OUTUBRO
if %mes%==11 set nomeMes=11 - NOVEMBRO
if %mes%==12 set nomeMes=12 - DEZEMBRO

REM Criar a pasta com o nome do dia e do mês no diretório especificado
mkdir "C:\Users\administrator\Desktop\Teste\%ano%\%nomeMes%\%data%"
mkdir "C:\Users\administrator\Desktop\Teste\%nomeMes%\%data%"
mkdir "C:\Users\administrator\Desktop\Teste\%data%"



