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


function! screenspace#GUIHideAll()
    " set guioptions-=m  " menu
    " set guioptions-=T  " toolbar
    " set guioptions-=r  " right-hand scroll bar
    " set guioptions-=l  " left-hand scroll bar
    " set guioptions-=b  " horizontal scrollbar
    set guioptions=
endfunction
command! -nargs=0 GUIHideAll :call screenspace#GUIHideAll()


function! screenspace#GUIShowAll()
    set guioptions+=m  " menu
    set guioptions+=T  " toolbar
    set guioptions+=r  " right-hand scroll bar
    set guioptions-=l  " left-hand scroll bar
    set guioptions+=b  " horizontal scrollbar
endfunction
command! -nargs=0 GUIShowAll :call screenspace#GUIShowAll()


function! screenspace#GUIHideMenu()
    set guioptions-=m  " menu
endfunction
command! -nargs=0 GUIHideMenu :call screenspace#GUIHideMenu()


function! screenspace#GUIShowMenu()
    set guioptions+=m  " menu
endfunction
command! -nargs=0 GUIShowMenu :call screenspace#GUIShowMenu()


" function! screenspace#GUIShowToolbar()
"     set guioptions+=t  " toolbar
" endfunction
" command! -nargs=0 GUIShowToolbar :call screenspace#GUIShowToolbar()


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

