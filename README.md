# nvim config

*Note*: Location of this config should be in ~/.config/nvim

## Key Maps
```Ctrl + f``` = Find files

```Ctrl + s``` = Find string in files

```Ctrl + g``` = Find in Git files

```Shift + e``` = Open file explorer (:Ex) (or NvimTree)

```Shift + a``` = Harpoon add

```Shift + h``` = Harpoon UI

```Leader + 1 .. 4``` = Harpoon jump

```Leader + u``` = Undo Tree

```K in visual mode``` = Move selected lines(s) up

```J in visual mode``` = Move selected line(s) down

```Leader + p``` = Paste copied text without overwriting the clipboard.

```Leader + y``` = Copy into system clipboard.

```dap``` = Delete the next block.

```ci"``` = Change inside ".

```vi(``` = Highlight indise (.

```di{``` = Delete inside {.

```va{``` = Highligth entire block you're in.

```%``` = When at a start or end of a block (,),{,},",", etc. Jump between opening and closing character.

```Ctrl + t``` = New split tab.

```Ctrl + w``` = Quit tab.

```Ctrl + [h,j,k,l]``` = Navigate between tabs.

## LSP Key Maps
```Ctrl + b``` = Select previous item (or arrow up)

```Ctrl + n``` = Select next item (or arrow down)

```Ctrl + i``` = Confirm selection

```gd``` = Go to definiton

```K``` = Hover

```[d``` = Go to next

```]d``` = Go to previous

```Leader + ca``` = Code action

```Leader + ref``` = References

```Leader + rn``` = Rename

```Ctrl + h``` = Signature help

```:Mason``` = Open LSP server install list

```:LspInfo``` = Show info about attached LSP

```:LspLog``` = Show LSP log

```:TSUpdate``` = Update Treesitter

### Vim Key Maps
In file tree:

```%``` = new file

```d``` = new dir

### Sourcing
```:so``` = source file

```:PackerSync``` = sync with Packer

### Git
```:GitGutterEnable```

```:GitGutterDisable```

```:GitGutterToggle```

### Tests
```Leader + rt``` = Run nearest test

```Leader + rf``` = Run all tests in current file

```Leader + vtr``` = View test report

```Leader + ctr``` = Close test report

```Leader + srt``` = Stop running test

```Leader + rlt``` = Run last test

```Leader + vto``` = View test output

```Leader + oto``` = Open test output panel

```Leader + cto``` = Close test output panel
