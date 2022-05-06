<p align="center">
  <img width="25%" src="https://github.com/mirucaaura.png" />
</p>

<p align="center">
  <b>🌹 miruca's neovim dot files 🌹</b>
</p>

## Requirements

- Vim 8.2 or above
- [dein.vim](https://github.com/Shougo/dein.vim)

If you use Vim below 8.2, please update Vim as follows:

```shell
$ sudo add-apt-repository ppa:jonathonf/vim
$ sudo apt update
$ sudo apt install vim
```

For using [dein.vim](https://github.com/Shougo/dein.vim), you must define the installation directory (e.g., `~/.cache/dein`) before to use dein. Then, run below script:

```shell
curl https://raw.githubusercontent.com/Shougo/dein.vim/master/bin/installer.sh > installer.sh
# For example, we just use `~/.cache/dein` as installation directory
sh ./installer.sh ~/.cache/dein
```

## Plugins

- [Shougo/ddc.vim](https://github.com/Shougo/ddc.vim)
	- enable to autocomplete
	- [denops.vim](https://github.com/vim-denops/denops.vim) and [Deno.land](https://deno.land/) are required to use this plugins

### Installation of Deno

You can install Deno as follows:

```shell
curl -fsSL https://deno.land/install.sh | sh
```

You can try running a simple program:

```shell
deno run https://deno.land/std/examples/welcome.ts
```

- [previm/previm](https://github.com/previm/previm)
	- enable to preview markdown file in browser
	- open markdown file and type `:PrevimOpen`
	- you (may) need to define the path of browser in `dein.toml`

- [cohama/lexima.vim](https://github.com/cohama/lexima.vim)
	- enable to auto close parentheses

- [cocopon/iceberg](https://github.com/cocopon/iceberg.vim)
	- colorscheme
	- `colorscheme iceberg` are to be set below `dein` settings

## Others
You may need the program `unzip` to install deno.land, and you can install `unzip` as follows:

```shell
sudo apt-get install unzip -y
```
