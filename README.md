# vim-dot-http

forked from [dot-http](https://github.com/bayne/dot-http).

## My Additions
- added a global directory variable `dot_http_dir`, useful in case `http-client.env.json` is present in another directory

![screenshot](https://user-images.githubusercontent.com/712014/72755392-39831a00-3b7f-11ea-8407-82d666b029e3.png)

## Description

Features:
- Syntax highlighting for .http files
- Run request under cursor
- Response output displayed in scratch buffer

## Installation

```lua
--packer.nvim
use 'nxtcoder17/vim-dot-http'

```
# vim 8 native package loading
# http://vimhelp.appspot.com/repeat.txt.html#packages
git clone https://github.com/bayne/vim-dot-http.git ~/.vim/pack/my-packages/start/vim-dot-http
```

## Usage

Running `:DotHttp` will invoke `dot-http` on the line that the cursor is currently on. The response output will be displayed in a scratch buffer.

Set the current environment by setting the environment variable

```vimscript
let g:dot_http_env = 'dev'
let g:dot_http_dir = '__http__'
```
or in lua,
```lua
vim.g.dot_http_env = 'dev'
vim.g.dot_http_dir = '__http__'
```

