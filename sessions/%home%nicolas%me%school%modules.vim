let SessionLoad = 1
let s:so_save = &g:so | let s:siso_save = &g:siso | setg so=0 siso=0 | setl so=-1 siso=-1
let v:this_session=expand("<sfile>:p")
silent only
silent tabonly
cd ~/me/school/modules
if expand('%') == '' && !&modified && line('$') <= 1 && getline(1) == ''
  let s:wipebuf = bufnr('%')
endif
let s:shortmess_save = &shortmess
set shortmess=aoO
badd +11 m\ m1\ n\ =\ foldl\ (acc\ x\ ->\ acc\ +\ (x\ \ m)\ +\ (x\ \ m1))\ 0\ \[2..n-1]
badd +11 c.hs
argglobal
%argdel
$argadd m\ m1\ n\ =\ foldl\ (acc\ x\ ->\ acc\ +\ (x\ \ m)\ +\ (x\ \ m1))\ 0\ \[2..n-1]
edit c.hs
argglobal
balt m\ m1\ n\ =\ foldl\ (acc\ x\ ->\ acc\ +\ (x\ \ m)\ +\ (x\ \ m1))\ 0\ \[2..n-1]
let s:l = 11 - ((10 * winheight(0) + 14) / 28)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 11
normal! 099|
tabnext 1
if exists('s:wipebuf') && len(win_findbuf(s:wipebuf)) == 0 && getbufvar(s:wipebuf, '&buftype') isnot# 'terminal'
  silent exe 'bwipe ' . s:wipebuf
endif
unlet! s:wipebuf
set winheight=1 winwidth=20
let &shortmess = s:shortmess_save
let s:sx = expand("<sfile>:p:r")."x.vim"
if filereadable(s:sx)
  exe "source " . fnameescape(s:sx)
endif
let &g:so = s:so_save | let &g:siso = s:siso_save
set hlsearch
nohlsearch
doautoall SessionLoadPost
unlet SessionLoad
" vim: set ft=vim :