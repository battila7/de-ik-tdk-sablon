@echo off
@setlocal

set OUTPUT_DIR=build
set TALK_MAIN=main-talk.tex

set LATEX_MAKE=latexmk

set TALK_OUTPUT=talk

rmdir /q /s %OUTPUT_DIR%

mkdir %OUTPUT_DIR%

%LATEX_MAKE% -f -pdf -jobname=%OUTPUT_DIR%/%TALK_OUTPUT%  %TALK_MAIN%

%LATEX_MAKE% -c -f -jobname=%OUTPUT_DIR%/%TALK_OUTPUT%  %TALK_MAIN%
