#!/usr/bin/sh

nvim --headless -c 'quitall'
nvim --headless -c 'autocmd User PackerComplete quitall' -c 'PackerSync'
