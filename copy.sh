#!/bin/bash
mkdir -p ~/.config/fish/completions
mkdir -p ~/.config/fish/functions
cp -R fish/completions/. ~/.config/fish/completions
cp -R fish/functions/. ~/.config/fish/functions
