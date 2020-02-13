#!/usr/bin/env bash

# Configuration
OUTPUT_DIR=build
TALK_MAIN=main-talk.tex
TALK_OUTPUT=talk

# Actual build script
rm -rf $OUTPUT_DIR
mkdir $OUTPUT_DIR

latexmk -f -pdf -jobname="$OUTPUT_DIR/$TALK_OUTPUT"  $TALK_MAIN

latexmk -c -f -jobname="$OUTPUT_DIR/$TALK_OUTPUT"  $TALK_MAIN
