NVIM_CONFIG_DIR=${HOME}/.config/nvim
CURRENT_DIR := $(dir $(abspath $(lastword $(MAKEFILE_LIST))))
INIT_LUA=init.lua
LUA_DIR=lua

.PHONY: link-config init-plugins up update-plugins

all: link-config init-plugins

link-config:
	@echo "source: ${CURRENT_DIR}"
	@echo "target: ${NVIM_CONFIG_DIR}"
	@mkdir -p "${NVIM_CONFIG_DIR}"
	@ln -s "${CURRENT_DIR}/${INIT_LUA}" "${NVIM_CONFIG_DIR}/" \
	&& ln -s "${CURRENT_DIR}/${LUA_DIR}" "${NVIM_CONFIG_DIR}/" \
	&& echo '> config linked' \
	|| echo '> config link failed' && exit 1

init-plugins:
	@nvim --headless -c 'quitall'
	@nvim --headless -c 'autocmd User PackerComplete quitall' -c 'PackerSync' 1&2>/dev/null
	@nvim --headless -c 'quitall' \
	&& echo '> plugins installed' \
	|| echo '> plugin install failed' && exit 2

up: update-plugins

update-plugins:
	@nvim -c 'autocmd User PackerComplete quitall' -c 'PackerUpdate' \
	&& echo '> plugins updated' \
	|| echo '> plugin update failed' && exit 1
