# Neovim Config

## Requirements

- Neovim >= v0.9.5
  - https://github.com/neovim/neovim/blob/master/INSTALL.md
- Basic utils:
  - `git`
  - `make`
  - `unzip`
  - `gcc`
  - `ripgrep`
  - (Optional) `nerd font`
- Clone this config into `~/.config/nvim`

## Keybinds

### Plugin Management

`:Lazy` - Open Plugin Manager overlay.

### Panes

| Keybind | Action |
| ------- | ----- |
| `<C-w>s` | Split window horizonally |
| `<C-w>v` | Split window vertically |
| `<C-w>q` | Close pane |
| `<C-hjkl>` | Navigate between panes |
| `<C-w>+-` | Adjust height |
| `<C-w><>` | Adjust width |
| `<C-w>=` | Equal height and width |
| `<C-w>_` | Max height |
| `<C-w>PIPE` | Max width |
| `<C-w>o` | Close all other windows |
| `<C-w>T` | New tab |
| `<C-w>w` | Switch windows |
| `<C-w>x` | Swap current with next |

### Navitagion

| Keybind | Action |
| ------- | ----- |
| `<C-e>` | Open/Close File Explorer |
| `<C-hjkl>` | Navigate between panes |
| `a` `FileExplorer` | Create new file/directory |
| `d` `FileExplorer` | Delete |
| `r` `FileExplorer` | Rename |
| `<space>sh` | Search Help |
| `<space>sk` | Search Keymaps |
| `<C-f>` | Search Files |
| `<space>sw` | Search Current Word |
| `<C-s>` | Fuzzy Search |
| `<space><space>` | View Open Buffers |
| `<space>/` | Fuzzy Search in Current Buffer |
| `<space>s/` | Fuzzy Seach in Open Buffers |
| `<space>sn` | Search *this* Neovim config |

### LSP

| Keybind | Action |
| ------- | ----- |
| `<C-n>` | Next autocomplete suggestion |
| `<C-p>` | Previous autocomplete suggestion |
| `<C-b>` | Scroll documentation back |
| `<C-f>` | Scroll documentation forward |
| `<C-y>` | Accept autocomplete suggestion
| `<C-space>` | Manually trigger autocomplete |
| `gd` | Go to Definition |
| `gr` | Go to References |
| `gI` | Go to Implementation |
| `<space>D` | Type Definition |
| `<space>ds` | Document Symbols |
| `<space>rn` | Rename |
| `<space>ca` | Code Action |
| `K` | Hover Documentation |
| `gD` | Go to Declaration |
| `<space>th` | Enable/Disable inlay hints |
| `gc` **VISUAL** | Comment selected line(s) |

`:Mason` - Open LSP manager, install language servers, linters, formatters...

`:TSInstall <language>` - Install language grammar for TreeSitter.

`:TSInstall <Tab>` - See available grammars.

`:LspInfo` - View information about current LSPs attached to open buffers.

`:LspLog` - View LSP logs.

`:LspRestart` - Restart LSP.

### Harpoon

| Keybind | Action |
| ------- | ----- |
| `<space>a` | Add file to list |
| `<space>h` | Show list |
| `<space>1..8` | Switch to file 1..8 within the list |

### Improved Around/Inside Text Objects

| Keybind | Action |
| ------- | ----- |
| `va)` | Visual select Around ) |
| `yinq` | Yank Inside Next Quote |
| `ci(` | Change Inside ( |
| `saiw)` | Surround word within () |
| `sd'` | Surround Delete ' |
| `sr)]` | Surround Replace ) with ] |

### Git

Enter command `:Git`, see options through `Tab`.

E.g. `:Git blame` toggles the annotaitons buffer.

### Maven

Enter command `:Maven` to execute Maven goals.

**Note**: Java LSP requires JDK >= 17 on the path. The Maven plugin has been configured
to run with the JDK set independently from what is on the `$PATH`,
to support LSP and Maven builds for older projects.

For this to work you will need a variation of the following script,
called `neovim_maven` located somewhere on your `$PATH`.

```bash
#!/bin/bash

if [[ -z "$JV" ]]; then
    version="11"
else
    version="$JV"
fi

export JAVA_HOME=/path/to/your/jdk/installations/$version

mvn -V "$@"
```

The `JV` environment properly can be used to switch between java versions. E.g.

```bash
export JV="17"
```
