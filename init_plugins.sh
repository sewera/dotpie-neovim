#!/usr/bin/env sh

nvim --headless -c 'quitall'
nvim --headless -c 'autocmd User PackerComplete quitall' -c 'PackerSync'
