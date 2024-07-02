# Gerador de Pastas `.bat`
Fiz este script que cria diretórios com base na data atual e organiza os arquivos. O script extrai a data e a hora atuais, formata e cria pastas com nomes apropriados nos diretórios especificados.

# Como Funciona

### Obter a Data e Hora Atuais:

- O script obtém a data e hora atuais no formato YYYYMMDDHHMMSS usando a ferramenta Windows Management Instrumentation Command-line (WMIC).

`for /f "skip=1 delims=" %%x in ('wmic os get localdatetime') do if not defined LocalDateTime set LocalDateTime=%%x`

### Extrair Dia, Mês e Ano:

O script extrai o dia, mês e ano da string LocalDateTime.
```
set dia=%LocalDateTime:~6,2%
set mes=%LocalDateTime:~4,2%
set ano=%LocalDateTime:~0,4%
set data=%LocalDateTime:~6,2%-%LocalDateTime:~4,2%
```
### Converter o Número do Mês para o Nome do Mês:

O script converte o mês numérico para o nome do mês para melhor legibilidade.
```
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
```

### Criar Diretórios:

O script cria pastas nos diretórios especificados com nomes formatados como dia-mês.

mkdir "C:\Sua Pasta\%ano%\%nomeMes%\%data%"
mkdir "C:\Sua Pasta\%nomeMes%\%data%"
mkdir "C:\Users\Desktop\Sua Pasta\%nomeMes%\%data%"

## Uso

- Salve o script como um arquivo `.bat`.
- Execute o script clicando duas vezes no arquivo `.bat` ou executando-o a partir da linha de comando.
- Os diretórios serão criados nos caminhos especificados com base na data atual.

Este script ajuda a organizar arquivos por data, facilitando a gestão e localização dos mesmos conforme necessário.
