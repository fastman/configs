Plugin 'VundleVim/Vundle.vim'                            " plugin manager

" kolorki
Plugin 'nanotech/jellybeans.vim'                         " colorscheme: jellybeans
Plugin 'morhetz/gruvbox'                                 " colorscheme: gruvbox
Plugin 'twilight'                                        " colorscheme: twilight (legacy)
Plugin 'mhartington/oceanic-next'                        " colorscheme: oceanic-next
Plugin 'catppuccin/vim', { 'name': 'catppuccin' }        " colorscheme: catppuccin
Plugin 'dracula/vim', { 'name': 'dracula' }              " colorscheme: dracula

" git
Plugin 'airblade/vim-gitgutter'                          " git diff signs in gutter
Plugin 'tpope/vim-fugitive'                              " Git integration (status/blame)
Plugin 'fmoralesc/vim-autogit'                           " auto-commit helper

" boxy / nawigacja / szukanie
Plugin 'mileszs/ack.vim'                                 " project text search
Plugin 'ctrlpvim/ctrlp.vim'                              " fuzzy file/buffer finder
Plugin 'preservim/nerdtree'                              " file tree explorer sidebar
Plugin 'preservim/tagbar'                                " symbols/tags outline window
Plugin 'zhaocai/GoldenView.Vim'                          " auto-balance split windows
"Plugin 'roman/golden-ratio'                             " auto-resize windows (alt)
Plugin 'vim-airline/vim-airline'                         " status/tabline UI
Plugin 'vim-airline/vim-airline-themes'                  " airline theme pack

" wyrownywanie / edycja
Plugin 'godlygeek/tabular'                               " align text by pattern
Plugin 'tpope/vim-surround'                              " add/change/delete surrounds
Plugin 'nathanaelkane/vim-indent-guides'                 " indent guides
"Plugin 'AutoClose'                                      " auto-close brackets/quotes

" autocomplete
Plugin 'ervandew/supertab'                               " Tab-triggered insert completion
Plugin 'ycm-core/YouCompleteMe'                          " semantic code completion

" testing
Plugin 'vim-test/vim-test'                               " run tests from Vim

" syntax
Plugin 'pangloss/vim-javascript'                         " JavaScript syntax
Plugin 'HerringtonDarkholme/yats.vim'                    " TypeScript syntax
Plugin 'elzr/vim-json'                                   " JSON syntax
Plugin 'heavenshell/vim-jsdoc'                           " generate JSDoc blocks
Plugin 'pearofducks/ansible-vim'                         " Ansible syntax
Plugin 'kchmck/vim-coffee-script'                        " CoffeeScript syntax
Plugin 'digitaltoad/vim-pug'                             " jade/pug markup
Plugin 'MaxMEllon/vim-jsx-pretty'                        " JSX syntax
Plugin 'robbles/logstash.vim'                            " Logstash syntax
"Plugin 'ada.vim'                                        " Ada syntax support
"Plugin 'rodjek/vim-puppet'                              " Puppet syntax support

" komentowanie
Plugin 'preservim/nerdcommenter'                         " quick comment toggles

" framework / domain
Plugin 'plasticboy/vim-markdown'                         " Markdown syntax
Plugin 'hashivim/vim-terraform'                          " Terraform syntax
