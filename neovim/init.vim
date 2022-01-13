call plug#begin('~/AppData/Local/nvim/plugged')
"Начало списка пакетов

"Утилиты
Plug 'preservim/nerdtree'
Plug 'jlanzarotta/bufexplorer'
Plug 'tpope/vim-fugitive'

"Дизайн
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'tomasr/molokai'
Plug 'ryanoasis/vim-devicons'
Plug 'joshdick/onedark.vim'
Plug 'lifepillar/vim-solarized8'

"Подстановка
"Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'StanAngeloff/php.vim'
Plug 'mattn/emmet-vim'



Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'airblade/vim-rooter'
"Конец списка
call plug#end()

set encoding=utf-8 
syntax enable " Включает подсветку синтаксиса


" Включение подсказок 
let g:deoplete#enable_at_startup = 1

let g:airline_theme='base16_monokai' " Тема airline 
" let g:airline_statusline_ontop=1 " Панель статуса сверху
let g:airline_powerline_fonts = 1 " Поддержка powerline шрифтов
let g:airline#extensions#tabline#left_sep = ' ' " Прямоугольные вкладки
let g:airline#extensions#tabline#enabled = 1 " Вкладки airline
let g:airline#extensions#tabline#formatter = 'unique_tail' " Отображение пути в вкладках
let g:airline#extensions#keymap#enabled = 1 "Не показывать текущий маппинг
let g:airline_section_z = "\ue0a1:%l/%L Col:%c" "Кастомная графа положения курсора
let g:Powerline_symbols='unicode' "Поддержка unicode

" Делаем так, чтобы навигация работала на русском языке
nmap о j
nmap л k
nmap р h
nmap д l
nmap ш i
nmap ф a
nmap в d

nmap Ж :
nmap ц w
nmap й q
nmap м v
nmap ы s
nmap . /

" Отмена действия
imap <C-z> <ESC>:u<Return>a
nmap <C-z> <ESC>:u<Return>
" Комментирование
imap <C-/> /**<Return><Space><Return>/<Esc>"ka 
" Сохранение
imap <C-s> <ESC>:w<Return>
nmap <C-s> :w<Return>
" Вставка 
imap <C-v> <ESC>"+Pa
nmap <C-v> "+P
" Копирование
vmap <C-c> "+Y

" Выход из терминала при нажатии на shift+q
" allow quit via single keypress (Q)
map Q :qa<CR>

" переключение между вкладками 
nnoremap <C-Left> :tabprevious<CR>                                                                            
nnoremap <C-Right> :tabnext<CR>

set noshowmode " --INSERT-- не мозолит глаза
set guifont=Hack\ NF:h15 " Настройка шрифтов (если не работает у берите "\ NF")
set number " Нумерация строк
set wrap linebreak nolist " Перенос строки при переполнении рабочей области
set cursorline " Подсветка строки с куросом
set mouse=a

set keymap=russian-jcukenwin 
"Язык ввода при старте Вима - Английский
set iminsert=0
""Аналогично настраивается режим поиска
set imsearch=0

"Табуляция
"При нажатии Tab вставляется 4 пробела
set tabstop=4 
set expandtab
set shiftwidth=4
set smarttab
set smartindent

" В нормальном режиме Ctrl+n вызывает :NERDTree
nmap <C-n> :NERDTreeToggle<CR>
vmap ++ <plug>NERDCommenterToggle
nmap ++ <plug>NERDCommenterToggl
let g:NERDTreeGitStatusWithFlags = 1
let g:NERDTreeIgnore = ['^node_modules$']

" Перемещение по буферам
nmap <C-F5> <Esc>:BufExplorer<cr>
vmap <C-F5> <esc>:BufExplorer<cr>
imap <C-F5> <esc>:BufExplorer<cr>

" F6 - предыдущий буфер
nmap <C-F6> :bp<cr>
vmap <C-F6> <esc>:bp<cr>i
imap <C-F6> <esc>:bp<cr>i

" F7 - следующий буфер
nmap <C-F7> :bn<cr>
vmap <C-F7> <esc>:bn<cr>i
imap <C-F7> <esc>:bn<cr>i

" Ctrl + tab - переключение между вкладками
nmap <C-Tab> :tabNext<cr>
vmap <C-Tab> <esc>:tabNext<cr>
imap <C-Tab> <esc>:tabNext<cr>

" Ctrl + T создаёт новую вкладку
nmap <C-t> :tabnew<cr>
imap <C-t> <esc>:tabnew<cr>
vmap <C-t> <esc>:tabnew<cr>

" Ctrl + Q закрывает вкладку (но не буфер)
nmap <C-q> :tabclose<cr>
vmap <C-q> <esc>:tabclose<cr>
