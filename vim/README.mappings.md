# Vim mappings i komendy pluginow

Dokument zawiera tylko:
1. skroty/polecenia/mappingi pluginow uzywanych w konfiguracji,
2. mappingi zdefiniowane bezposrednio w configach.

## 1) Pluginy uzywane: skroty / polecenia / mappingi

| Plugin | Skrot / polecenie | Typ | Opis | Konfiguracja Vim |
|---|---|---|---|---|
| `ctrlpvim/ctrlp.vim` | `<C-p>` | domyslny pluginu | Otwiera CtrlP | domyslne pluginu |
| `ctrlpvim/ctrlp.vim` | `:CtrlP`, `:CtrlPMixed` | domyslne/uzywane | Fuzzy finder (`g:ctrlp_cmd='CtrlPMixed'`) | wspolne (`vim/vimrc.shared`) |
| `preservim/nerdtree` | `<C-D>` | custom | `:NERDTreeToggle` | wspolne (`vim/vimrc.shared`) |
| `preservim/nerdtree` | `<C-F>` | custom | `:NERDTreeFind` | wspolne (`vim/vimrc.shared`) |
| `preservim/nerdtree` | `:NERDTreeToggle`, `:NERDTreeFind` | domyslne pluginu | Komendy NERDTree | domyslne pluginu |
| `preservim/tagbar` | `<F8>` | domyslny pluginu | Toggle Tagbar | domyslne pluginu |
| `preservim/tagbar` | `:TagbarToggle` | domyslny pluginu | Toggle Tagbar (komenda) | domyslne pluginu |
| `ycm-core/YouCompleteMe` | `<leader>gd` | custom | `:YcmCompleter GoToDefinitionElseDeclaration` | wspolne (`vim/vimrc.shared`) |
| `ycm-core/YouCompleteMe` | `<leader>gr` | custom | `:YcmCompleter GoToReferences` | wspolne (`vim/vimrc.shared`) |
| `ycm-core/YouCompleteMe` | `<leader>rn` | custom | `:YcmCompleter RefactorRename ...` (rename z promptem) | wspolne (`vim/vimrc.shared`) |
| `ycm-core/YouCompleteMe` | `<leader>f` | custom | `:YcmCompleter FixIt` | wspolne (`vim/vimrc.shared`) |
| `ycm-core/YouCompleteMe` | `<leader>d` | custom | `:YcmDiags` | wspolne (`vim/vimrc.shared`) |
| `ycm-core/YouCompleteMe` | `:YcmCompleter ...`, `:YcmDiags` | uzywane | Komendy YCM | wspolne (`vim/vimrc.shared`) |
| `vim-test/vim-test` | `<leader>t` | custom | `:TestNearest` | wspolne (`vim/vimrc.shared`) |
| `vim-test/vim-test` | `<leader>T` | custom | `:TestFile` | wspolne (`vim/vimrc.shared`) |
| `vim-test/vim-test` | `<leader>a` | custom | `:TestSuite` | wspolne (`vim/vimrc.shared`) |
| `vim-test/vim-test` | `<leader>l` | custom | `:TestLast` | wspolne (`vim/vimrc.shared`) |
| `vim-test/vim-test` | `<leader>g` | custom | `:TestVisit` | wspolne (`vim/vimrc.shared`) |
| `vim-test/vim-test` | `:TestNearest`, `:TestFile`, `:TestSuite`, `:TestLast`, `:TestVisit` | domyslne pluginu | Komendy testow | domyslne pluginu |
| `tpope/vim-surround` | `ys`, `cs`, `ds` | domyslne pluginu | Operacje surround | domyslne pluginu |
| `godlygeek/tabular` | `:Tabularize` | domyslne pluginu | Wyrownywanie tekstu | domyslne pluginu |
| `preservim/nerdcommenter` | `<leader>cc`, `<leader>cu`, `<leader>c<space>` | domyslne pluginu | Komentowanie/odkomentowanie/toggle | domyslne pluginu |
| `mileszs/ack.vim` | `:Ack`, `:Ack!`, `:LAck`, `:AckAdd` | domyslne pluginu | Szukanie przez ack/ag (`g:ackprg` ustawione) | domyslne + wspolne (`vim/vimrc.shared`) |
| `tpope/vim-fugitive` | `:Git`, `:Gstatus`, `:Gblame`, `:Gdiffsplit` | domyslne pluginu | Operacje Git | domyslne pluginu |
| `zhaocai/GoldenView.Vim` | (brak aktywnych default map) | ustawienie w configu | Domyslne mapowania wylaczone (`g:goldenview__enable_default_mapping=0`) | wspolne (`vim/vimrc.shared`) |

## 2) Mappingi zdefiniowane w configach

| Tryb | Mapping | Akcja | Konfiguracja Vim |
|---|---|---|---|
| normal | `<C-D>` | `:NERDTreeToggle<CR>` | wspolne (`vim/vimrc.shared`) |
| normal | `<C-F>` | `:NERDTreeFind<CR>` | wspolne (`vim/vimrc.shared`) |
| normal | `<C-N>` | `:silent noh<CR>` | wspolne (`vim/vimrc.shared`) |
| normal | `<leader>gd` | `:YcmCompleter GoToDefinitionElseDeclaration<CR>` | wspolne (`vim/vimrc.shared`) |
| normal | `<leader>gr` | `:YcmCompleter GoToReferences<CR>` | wspolne (`vim/vimrc.shared`) |
| normal | `<leader>rn` | `:execute 'YcmCompleter RefactorRename ' . input('Rename to: ', expand('<cword>'))<CR>` | wspolne (`vim/vimrc.shared`) |
| normal | `<leader>f` | `:YcmCompleter FixIt<CR>` | wspolne (`vim/vimrc.shared`) |
| normal | `<leader>d` | `:YcmDiags<CR>` | wspolne (`vim/vimrc.shared`) |
| normal | `<leader>t` | `:TestNearest<CR>` | wspolne (`vim/vimrc.shared`) |
| normal | `<leader>T` | `:TestFile<CR>` | wspolne (`vim/vimrc.shared`) |
| normal | `<leader>a` | `:TestSuite<CR>` | wspolne (`vim/vimrc.shared`) |
| normal | `<leader>l` | `:TestLast<CR>` | wspolne (`vim/vimrc.shared`) |
| normal | `<leader>g` | `:TestVisit<CR>` | wspolne (`vim/vimrc.shared`) |
| normal | `<leader>tc` | `:ContrastToggle<CR>` | wspolne (`vim/vimrc.shared`) |
| insert | `jk` | `<Esc>` | wspolne (`vim/vimrc.shared`) |
