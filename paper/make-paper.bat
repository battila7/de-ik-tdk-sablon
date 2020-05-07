@echo off
@setlocal

set OUTPUT_DIR=build
set MAIN=main-paper.tex

set LATEX_MAKE=latexmk

set OTDK=otdk
set TDK_WITH_NAME=tdk-nevvel
set TDK_WITHOUT_NAME=tdk-nev-nelkul

set PDFLATEX_OPTIONS_OTDK=pdflatex %%O \def\printName{1}\def\otdk{1}\input{%%S}
set PDFLATEX_OPTIONS_TDK_WITH_NAME=pdflatex %%O \def\printName{1}\input{%%S}
set PDFLATEX_OPTIONS_TDK_WITHOUT_NAME=pdflatex %%O\input{%%S}

rmdir /q /s %OUTPUT_DIR%

mkdir %OUTPUT_DIR%

if "%~1" == "otdk" (
  set NAME=%OTDK%
  set OPTIONS=%PDFLATEX_OPTIONS_OTDK%
) else if "%~1" == "tdk-nevvel" (
  set NAME=%TDK_WITH_NAME%
  set OPTIONS=%PDFLATEX_OPTIONS_TDK_WITH_NAME%
) else (
  set NAME=%TDK_WITHOUT_NAME%
  set OPTIONS=%PDFLATEX_OPTIONS_TDK_WITHOUT_NAME%
)

%LATEX_MAKE% -f -pdf -pdflatex="%OPTIONS%" -jobname=%OUTPUT_DIR%/%NAME%  %MAIN%

%LATEX_MAKE% -c -f -jobname=%OUTPUT_DIR%/%NAME%  %MAIN%
