#!/usr/bin/env bash

# Configuration
OUTPUT_DIR=build
MAIN="main-paper.tex"

OTDK=otdk
PDFLATEX_OPTIONS_OTDK="pdflatex %O \"\def\printName{1}\def\otdk{1}\input{%S}\""

TDK_WITH_NAME=tdk-nevvel
PDFLATEX_OPTIONS_TDK_WITH_NAME="pdflatex %O \"\def\printName{1}\input{%S}\""

TDK_WITHOUT_NAME=tdk-nev-nelkul
PDFLATEX_OPTIONS_TDK_WITHOUT_NAME="pdflatex %O \"\input{%S}\""

# Actual build script
REQUESTED_VERSION=$1

rm -rf $OUTPUT_DIR
mkdir $OUTPUT_DIR

if [ "$REQUESTED_VERSION" == "$OTDK" ]; then 
  NAME="$OTDK"
  OPTIONS="$PDFLATEX_OPTIONS_OTDK"
elif [ "$REQUESTED_VERSION" == "$TDK_WITH_NAME" ]; then
  NAME="$TDK_WITH_NAME"
  OPTIONS="$PDFLATEX_OPTIONS_TDK_WITH_NAME"
else 
  NAME="$TDK_WITHOUT_NAME"
  OPTIONS="$PDFLATEX_OPTIONS_TDK_WITHOUT_NAME"
fi

latexmk -f -pdf -pdflatex="$OPTIONS" -jobname="$OUTPUT_DIR/$NAME"  "$MAIN"

latexmk -c -f -jobname="$OUTPUT_DIR/$NAME"  "$MAIN"
