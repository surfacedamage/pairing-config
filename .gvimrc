" use gui tabs
  set guioptions+=e

" kill the menubar
  set guioptions-=T

" kill the scrollbars
  set guioptions-=r
  set guioptions-=L

" go full screen like you mean it
  set fuoptions=maxvert,maxhorz

" use a big, pretty font
  set guifont=Monaco:h21

" initial window size
  set lines=45 columns=120

" pretty but not terminal-compatible color scheme
  set background=dark
  colors twilight2

" attempt to load a custom config for the currently logged in user
  runtime! custom_config/`whoami`.gvim

" cmd-T to launch peepopen
  if has("gui_macvim")
    macmenu &File.New\ Tab key=<nop>
    map <D-t> <Plug>PeepOpen
  end
