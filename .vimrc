" Notes {
" vim: set sw=4 ts=4 sts=4 et tw=78 foldmarker={,} foldlevel=0 foldmethod=marker spell:
" This is the personal .vimrc of Cu3PO42.
" Inspired by spf13's layout of his .vimrc.
" Uses .vimrc.before, .vimrc.bundles and .vimrc.after.
" }

" Load .vimrc.before {
    if filereadable(expand('~/.vimrc.before'))
        source ~/.vimrc.before
    endif
" }

" Activate NeoBundle {
    set rtp+=~/.vim/bundle/neobundle.vim
    call neobundle#rc('~/.vim/bundle')
    NeoBundleFetch 'Shougo/neobundle.vim'
" }

" Load .vimrc.bundles {
    if filereadable(expand('~/.vimrc.bundles'))
        source ~/.vimrc.bundles
    endif
" }

" Finish NeoBundle Setup {
    filetype plugin indent on
    NeoBundleCheck
" }

" General {
    " Compatibility {
        set t_Co=256

        " macvim {
            if has('gui_macvim')
                set guioptions-=r
                set guioptions-=L
            endif
        " }
    " }

    " Undo {
        if has('persistent_undo')
            set undodir='~/.vimundo/'
            set undofile
        endif
    " }

    " Tabs {
        set tabstop=4
        set shiftwidth=4
        set expandtab
    " }
    
    syntax on
    set number
    set guifont=Sauce\ Code\ Powerline
    color yadcs
    set nowrap
    set hlsearch
    set incsearch

" }

" Color Scheme development {
    " Show syntax highlighting groups for word under cursor {
        nmap <C-S-P> :call <SID>SynStack()<CR>
        function! <SID>SynStack()
          if !exists("*synstack")
            return
          endif
          echo map(synstack(line('.'), col('.')), 'synIDattr(v:val, "name")')
        endfunc
    " }

    " Compile current palette file and load scheme {
        nmap <C-S-C> :call <SID>CompilePalette()<CR>
        function! <SID>CompilePalette()
            let l:cn = expand("%:t:r")
            silent write
            execute "silent !palette % > ~/.vim/colors/" . l:cn . ".vim"
            execute "silent color " . l:cn
            redraw!
        endfunc
    " }
" }

" Load .vimrc.after {
    if filereadable(expand('~/.vimrc.after'))
        source ~/.vimrc.after
    endif
" }
