" get out of insert mode with cmd-i
  imap <D-i> <Esc>

" redo with U
  nmap U :redo<cr>

" easy wrap toggling
  nmap <Leader>w :set wrap!<cr>
  nmap <Leader>W :set nowrap<cr>

" shortcut to save all
  nmap <Leader>s :wa<cr>

" shortcuts for running tests
  nmap <Leader>ra :wa<cr> :RunAllRubyTests<cr>
  nmap <Leader>rc :wa<cr> :RunRubyFocusedContext<cr>
  nmap <Leader>rf :wa<cr> :RunRubyFocusedUnitTest<cr>
  nmap <Leader>rl :wa<cr> :RunLastRubyTest<cr>

" fast buffer switching
  nmap <Leader>b :TSelectBuffer<cr>

" switch windows
  nmap gw 

" open project view
  nmap gt :NERDTreeToggle<cr>

" close current window
  nmap gq :q<cr>

" close all other windows (in the current tab)
  nmap gW :only<cr>

" go to the alternate file (previous buffer) with g-enter
  nmap g 

" ack for project-wide searching
  nmap g/ :LAck! 
  nmap g* :LAck! -w <C-R><C-W><cr>
  nmap ga :LAckAdd! 
  nmap gn :lnext<cr>
  nmap gp :lprev<cr>

" shortcuts for frequenly used files
  nmap gs :tabe db/schema.rb<cr>
  nmap gr :tabe config/routes.rb<cr>

" # to surround with ruby string interpolation
  let g:surround_35 = "#{\r}"
" - to surround with no-output erb tag
  let g:surround_45 = "<% \r %>"
" = to surround with output erb tag
  let g:surround_61 = "<%= \r %>"

" insert blank lines without going into insert mode
  nmap go o<esc>
  nmap gO O<esc>

" open the source in a browser for distribution or copying as RTF
  nmap gH :OpenHtml<cr>

" mapping the jumping between splits. Hold control while using vim nav.
  nmap <C-J> <C-W>j<cr>
  nmap <C-K> <C-W>k<cr>
  nmap <C-H> <C-W>h<cr>
  nmap <C-L> <C-W>l<cr>

" shortcut for =>
  imap <C-l> <Space>=><Space>

" handy macro expansion
  abbrev Lidsa Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum
  iabbrev rdebug require 'ruby-debug'; Debugger.start; Debugger.settings[:autoeval] = 1; Debugger.settings[:autolist] = 1; debugger
  abbrev hte the

" Yank from the cursor to the end of the line, to be consistent with C and D.
  nnoremap Y y$

" rails.vim mappings
  map <Leader>oc :Rcontroller<Space>
  map <Leader>ov :Rview<Space>
  map <Leader>om :Rmodel<Space>
  map <Leader>oh :Rhelper<Space>
  map <Leader>oj :Rjavascript<Space>
  map <Leader>os :Rstylesheet<Space>

" paste below and select
  nnoremap p pV`]

" paste above and select
  nnoremap P PV`]
