" -*- vim -*-
" FILE: screenspace.vim
" PLUGINTYPE: plugin
" DESCRIPTION: Provides shortcut commands to hide or show GUI options and to set preset screen sizes.
" HOMEPAGE: https://github.com/caglartoklu/screenspace.vim
" LICENSE: https://github.com/caglartoklu/screenspace.vim/blob/master/LICENSE
" AUTHOR: caglartoklu

if exists('g:loaded_screenspace') || &cp
    " If it already loaded, do not load it again.
    finish
endif


" " http://vim.wikia.com/wiki/Hide_toolbar_or_menus_to_see_more_text
" set guioptions+=m  " Adds/Removes the menu
" set guioptions-=T  " Adds/Removes the toolbar
" set guioptions-=r  " Adds/Removes right-hand scroll bar
" set guioptions-=l  " Adds/Removes left-hand scroll bar
"
" " http://www.thisblog.runsfreesoftware.com/?q=Remove+scrollbars+from+Gvim
" set guioptions+=LlRrb
" set guioptions-=LlRrb
"
" set guioptions+=b " Adds/Removes the horizontal scrollbar


" mark that plugin loaded
let g:loaded_screenspace= 1


function! s:SetDefaultSettings()
    " Set the default settings.

    " An option.
    if !exists('g:screenspace_option')
        let g:screenspace_option = ''
    endif
endfunction


" BEGIN all
function! screenspace#HideAll()
    " set guioptions-=m  " menu
    " set guioptions-=T  " toolbar
    " set guioptions-=r  " right-hand scroll bar
    " set guioptions-=l  " left-hand scroll bar
    " set guioptions-=b  " horizontal scrollbar
    set guioptions=
endfunction
command! -nargs=0 SSpaceHideAll :call screenspace#HideAll()

function! screenspace#ShowAll()
    set guioptions+=m  " menu
    set guioptions+=T  " toolbar
    set guioptions+=r  " right-hand scroll bar
    set guioptions-=l  " left-hand scroll bar
    set guioptions+=b  " horizontal scrollbar
endfunction
command! -nargs=0 SSpaceShowAll :call screenspace#ShowAll()
" END all


" BEGIN menu
function! screenspace#HideMenu()
    set guioptions-=m
endfunction
command! -nargs=0 SSpaceHideMenu :call screenspace#HideMenu()

function! screenspace#ShowMenu()
    set guioptions+=m
endfunction
command! -nargs=0 SSpaceShowMenu :call screenspace#ShowMenu()
" END menu


" BEGIN toolbar
function! screenspace#HideToolbar()
    set guioptions-=T
endfunction
command! -nargs=0 SSpaceHideToolbar :call screenspace#HideToolbar()

function! screenspace#ShowToolbar()
    set guioptions+=T
endfunction
command! -nargs=0 SSpaceShowToolbar :call screenspace#ShowToolbar()
" END toolbar


" BEGIN right-hand scroll bar
function! screenspace#HideRightHScrollBar()
    set guioptions-=r
endfunction
command! -nargs=0 SSpaceHideRightHScrollBar :call screenspace#HideRightHScrollBar()

function! screenspace#ShowRightHScrollBar()
    set guioptions+=r
endfunction
command! -nargs=0 SSpaceShowRightHScrollBar :call screenspace#ShowRightHScrollBar()
" END right-hand scroll bar


" BEGIN left-hand scroll bar
function! screenspace#HideLeftHScrollBar()
    set guioptions-=l
endfunction
command! -nargs=0 SSpaceHideLeftHScrollBar :call screenspace#HideLeftHScrollBar()

function! screenspace#ShowLeftHScrollBar()
    set guioptions+=l
endfunction
command! -nargs=0 SSpaceShowLeftHScrollBar :call screenspace#ShowLeftHScrollBar()
" END left-hand scroll bar


" BEGIN bottom scroll bar
function! screenspace#HideBottomScrollBar()
    set guioptions-=b
endfunction
command! -nargs=0 SSpaceHideBottomScrollBar :call screenspace#HideBottomScrollBar()

function! screenspace#ShowBottomScrollBar()
    set guioptions+=b
endfunction
command! -nargs=0 SSpaceShowBottomScrollBar :call screenspace#ShowBottomScrollBar()
" END bottom scroll bar


" BEGIN all scrollbars
function! screenspace#HideScrollBars()
    set guioptions-=b
    set guioptions-=l
    set guioptions-=r
endfunction
command! -nargs=0 SSpaceHideScrollBars :call screenspace#HideScrollBars()

function! screenspace#ShowScrollBars()
    set guioptions+=b
    " set guioptions-=l " I don't like left scrollbar :)
    set guioptions+=r
endfunction
command! -nargs=0 SSpaceShowScrollBars :call screenspace#ShowScrollBars()
" END hide scrollbars


" Preset screen size commands

function! screenspace#ScreenSizeDOS()
    set columns=80 lines=25
endfunction
command! -nargs=0 ScreenSizeDOS :call screenspace#ScreenSizeDOS()

function! screenspace#ScreenSizePlus()
    set columns=120 lines=40
endfunction
command! -nargs=0 ScreenSizePlus :call screenspace#ScreenSizePlus()

function! screenspace#ScreenSizeFull()
    set columns=9999 lines=9999
endfunction
command! -nargs=0 ScreenSizeFull :call screenspace#ScreenSizeFull()


" Define the settings once.
call s:SetDefaultSettings()

