#!/bin/sh
npm update -g
PACKAGES=(
    typescript
)
npm install -g ${PACKAGES[@]}