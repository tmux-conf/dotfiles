set encoding=utf-8

"===== 表示設定 =====
set number "行番号の表示
set title "編集中ファイル名の表示
set showmatch "括弧入力時に対応する括弧を示す
set laststatus=2 "ステータスを表示
set ruler "カーソル位置を表示
syntax on "コードに色をつける
 
"===== 文字、カーソル設定 =====
set fenc=utf-8 "文字コードを指定
set autoindent "自動インデント
set smartindent "オートインデント
set tabstop=4 "インデントをスペース4つ分に設定
set shiftwidth=2 "自動的に入力されたインデントの空白を2つ分に設定
 
"===== 検索設定 =====
set ignorecase "大文字、小文字の区別をしない
set smartcase "大文字が含まれている場合は区別する
set wrapscan "検索時に最後まで行ったら最初に戻る
"set hlsearch "検索した文字を強調
set incsearch "インクリメンタルサーチを有効にする
 
"入力モード時のカーソル移動
inoremap <C-j> <Down>
inoremap <C-k> <Up>
inoremap <C-h> <Left>
inoremap <C-l> <Right>
 
set history=10000 "履歴を10000件保存
set cursorline     " カーソル行の背景色を変える
set cmdheight=1    " メッセージ表示欄を1行確保
set helpheight=999 " ヘルプを画面いっぱいに開く
"set list           " 不可視文字を表示

"== 前回のカーソル位置を覚える ==
augroup vimrcEx
 au BufRead * if line("'\"") > 0 && line("'\"") <= line("$") |
 \ exe "normal g`\"" | endif
        augroup END

"Goyo
map <C-f> :Goyo<CR>

" markdown {{{
  autocmd BufRead,BufNewFile *.mkd  set filetype=markdown
  autocmd BufRead,BufNewFile *.md  set filetype=markdown
  " Need: kannokanno/previm
  nnoremap <silent> <C-p> :PrevimOpen<CR> " Ctrl-pでプレビュー
  " 自動で折りたたまないようにする
  let g:vim_markdown_folding_disabled=1
  let g:previm_enable_realtime = 1
  " }}}

"-----------
call plug#begin('~/.vim/plugged')
Plug 'junegunn/goyo.vim'
Plug 'godlygeek/tabular'
Plug 'plasticboy/vim-markdown'
Plug 'kannokanno/previm'
Plug 'tyru/open-browser.vim'
call plug#end()


