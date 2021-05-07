" spell 

set spell
set spelllang=en_us
set spellfile=$HOME/Dotfiles/Vim/spell/en.utf8.add
set complete+=kspell

map <F5> :setlocal spell!<CR>

hi SpellBad cterm=underline "ctermfg=203 guifg=#ff5f5f
hi SpellLocal cterm=underline "ctermfg=203 guifg=#ff5f5f
hi SpellRare cterm=underline "ctermfg=203 guifg=#ff5f5f
hi SpellCap cterm=underline "ctermfg=203 guifg=#ff5f5f

