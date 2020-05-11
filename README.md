# screenspace.vim

Provides shortcut commands to hide or show GUI options and to set preset screen sizes.

I really like to use all of my screen.
I also do like to take screenshots without visual clutter.
As always, Vim provides lots of options to fine tune the screen.

vim.org script page:
https://www.vim.org/scripts/script.php?script_id=5858


# Installation

For Vundle users:

```viml
Plugin 'caglartoklu/screenspace.vim'
```

For all other users, simply drop the `screenspace.vim` file to your `plugin` directory.



# Usage

All the commands start with **`SSpace`** prefix.

## Size Commands


### `:SSpaceSizeDOS`
  
Sets the screen `columns=80` and `lines=25`.
This is the screen size for DOS.

### `:SSpaceSizePlus`

Sets the screen `columns=120` and `lines=40`.

### `:SSpaceSizeFull`

Sets the screen `columns=9999` and `lines=9999`.
 This will use most of the screen.

![](https://user-images.githubusercontent.com/2071639/81565986-e093f780-93a2-11ea-944a-e28e4a2bf60c.png)


## GUI Options Commands

### `:SSpaceHideAll`
### `:SSpaceShowAll`
### `:SSpaceHideMenu`
### `:SSpaceShowMenu`
### `:SSpaceHideToolbar`
### `:SSpaceShowToolbar`
### `:SSpaceHideRightHScrollBar`
### `:SSpaceShowRightHScrollBar`
### `:SSpaceHideLeftHScrollBar`
### `:SSpaceShowLeftHScrollBar`
### `:SSpaceHideBottomScrollBar`
### `:SSpaceShowBottomScrollBar`
### `:SSpaceHideScrollBars`
### `:SSpaceShowScrollBars`

![](https://user-images.githubusercontent.com/2071639/81565996-e38ee800-93a2-11ea-92dd-fce871200ec0.png)



## Calling screenspace.vim functions from VIMRC

It is possible to add an `BufEnter` auto command, but for performance reasons, I advice to add bare Vim options to VIMRC.

Bare options would be:

```viml
" set an initial screen size
set columns=120 lines=40

" hide everyting:
set guioptions=

" display options one by one:
set guioptions+=m  " menu
set guioptions+=T  " toolbar
set guioptions+=r  " right-hand scroll bar
set guioptions-=l  " left-hand scroll bar
set guioptions+=b  " horizontal scrollbar
```

http://vim.wikia.com/wiki/Hide_toolbar_or_menus_to_see_more_text



# Options

None, currently.



# See Also

It is worth checking the following plugins which are also related with screen size and visuals.

## xolox/vim-shell

https://github.com/xolox/vim-shell

> Improved integration between Vim and its environment (fullscreen, open URL, background command execution).

## dreadnaut/vim-bargreybars

https://github.com/dreadnaut/vim-bargreybars

> bargreybars.vim: remove gray bars from maximised gvim windows, on Windows



# License

Licensed with 2-clause license ("Simplified BSD License" or "FreeBSD License"). See the [LICENSE](LICENSE) file.

