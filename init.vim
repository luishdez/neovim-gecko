function! BuildComposer(info)
  if a:info.status != 'unchanged' || a:info.force
    !cargo build --release
    UpdateRemotePlugins
  endif
endfunction

call plug#begin('~/.config/nvim/plugged')

Plug 'euclio/vim-markdown-composer', { 'do': function('BuildComposer') }

call plug#end()
