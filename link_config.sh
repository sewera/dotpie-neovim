#!/usr/bin/env sh

NVIM_CONFIG_DIR=$HOME/.config/nvim
CURRENT_DIR=$(cd $(dirname "$0") || exit; pwd -P)

mkdir -p "$NVIM_CONFIG_DIR"
ln -s "${CURRENT_DIR}"/init.lua "$NVIM_CONFIG_DIR"/
ln -s "${CURRENT_DIR}"/lua "$NVIM_CONFIG_DIR"/
