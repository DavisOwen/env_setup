#!/bin/bash
mkdir -p ~/.vim/autoload ~/.vim/bundle && \
curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim
cd ~/.vim/bundle
git clone https://github.com/dense-analysis/ale.git
git clone https://github.com/tpope/vim-commentary.git
git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
git clone https://github.com/junegunn/fzf.vim.git
git clone https://github.com/morhetz/gruvbox.git
git clone https://github.com/tpope/vim-surround.git
git clone https://github.com/tpope/vim-fugitive.git
git clone https://github.com/ludovicchabant/vim-gutentags.git
git clone https://github.com/pangloss/vim-javascript.git
git clone https://github.com/sheerun/vim-polyglot.git
git clone https://github.com/leafgarland/typescript-vim.git
apt-get install ctags
RESULT=$?
if [ $RESULT -ne 0 ]; then
  if ! brew ls --versions ctags > /dev/null; then
    brew install ctags
    alias ctags="`brew --prefix`/bin/ctags"
    alias ctags >> ~/.bash_profile
  fi
fi
apt-get install silversearcher-ag
RESULT=$?
if [ $RESULT -ne 0 ]; then
  brew install the_silver_searcher
fi
~/.fzf/install
