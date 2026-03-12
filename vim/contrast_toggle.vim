if exists('g:loaded_dotfiles_contrast_toggle')
    finish
endif
let g:loaded_dotfiles_contrast_toggle = 1

let s:contrast_state_file = expand('~/.vim/.contrast_state.vim')
if filereadable(s:contrast_state_file)
    execute 'source ' . fnameescape(s:contrast_state_file)
endif
if !exists('g:catppuccin_high_contrast')
    let g:catppuccin_high_contrast = 0
endif

function! DotfilesApplyCatppuccinContrast() abort
    if !(exists('g:colors_name') && g:colors_name ==# 'catppuccin_mocha')
        return
    endif

    if get(g:, 'catppuccin_high_contrast', 0)
        hi Normal       guibg=#12121a guifg=#cdd6f4 ctermbg=0 ctermfg=15
        hi LineNr       guibg=#12121a guifg=#5c6773
        hi CursorLine   guibg=#1e1e2e
        hi StatusLine   guibg=#12121a guifg=#cdd6f4
        hi VertSplit    guibg=#12121a guifg=#313244
        hi Pmenu        guibg=#12121a guifg=#ffffff
        hi PmenuSel     guibg=#2a2c3c guifg=#ffffff
        hi Folded       guibg=#12121a guifg=#7f849c
    endif
endfunction

function! DotfilesPersistCatppuccinContrast() abort
    call writefile(['let g:catppuccin_high_contrast = ' . (get(g:, 'catppuccin_high_contrast', 0) ? '1' : '0')], s:contrast_state_file)
endfunction

function! DotfilesSetCatppuccinContrast(enabled) abort
    let g:catppuccin_high_contrast = a:enabled ? 1 : 0
    call DotfilesPersistCatppuccinContrast()

    if exists('g:colors_name') && g:colors_name ==# 'catppuccin_mocha'
        colorscheme catppuccin_mocha
    endif
    call DotfilesApplyCatppuccinContrast()

    echom 'Catppuccin contrast: ' . (g:catppuccin_high_contrast ? 'ON' : 'OFF')
endfunction

function! DotfilesToggleCatppuccinContrast() abort
    call DotfilesSetCatppuccinContrast(!get(g:, 'catppuccin_high_contrast', 0))
endfunction

command! ContrastToggle call DotfilesToggleCatppuccinContrast()
command! ContrastOn call DotfilesSetCatppuccinContrast(1)
command! ContrastOff call DotfilesSetCatppuccinContrast(0)

call DotfilesApplyCatppuccinContrast()
