# AlphaNvim
## The α Alpha of all neovim configs
AlphaNvim is my own neovim configuration after [BobVim](https://github.com/TarunDaCoder/BobVim) which isn't really that blazing and isn't really that bloat ¯\\\_(ツ)_/¯

> [!WARNING]
> This neovim config is not a distro! It is just the config that I use. This config only covers my personal needs.

## Screenshots
![Screenshot1](img/alphanvim_ss1.png)

![Screenshot2](img/alphanvim_ss2.png)


## Installation
- Run this command -
```sh
mv ~/.config/nvim ~/.config/nvim.bak
mv ~/.local/share/nvim ~/.local/share/nvim.bak

git clone https://github.com/TarunDaCoder/AlphaNvim.git ~/.config/nvim
```

- Then, inside of neovim do `:Rocks sync`
> [!NOTE]
> Doing `:Rocks sync` might take a while the first time you run it as `rocks.nvim` is a bit slow.
- And, ta-da! You now have `AlphaNvim` installed! 🎉

## Plugins used
- [rocks.nvim](https://github.com/nvim-neorocks/rocks.nvim) is our package manager
- [care.nvim](https://github.com/max397574/care.nvim) for completions
- [barbar.nvim](https://github.com/romgrk/barbar.nvim) is the tabline
- [feline.nvim](https://github.com/freddiehaddad/feline.nvim) is the statusline
- [this](https://github.com/Hitesh-Aggarwal/feline_theme.nvim) is the feline theme i used
- [telescope.nvim](https://github.com/nvim-telescope/telescope.nvim) is the fuzzy finder
- [conform.nvim](https://github.com/stevearc/conform.nvim) for formatting
- [overseer.nvim](https://github.com/stevearc/overseer.nvim) for code running
- [trouble.nvim](https://github.com/folke/trouble.nvim) better quickfix list and lots more...
- [indentmini.nvim](https://github.com/nvimdev/indentmini.nvim) for showing indent lines
- [which-key.nvim](https://github.com/folke/which-key.nvim) for showing our keymaps
- [alpha-nvim](https://github.com/goolord/alpha-nvim) dashboard
- [nvim-rip-substitute](https://github.com/chrisgrieser/nvim-rip-substitute) for quick search and replace
- [image.nvim](https://github.com/3rd/image.nvim) for image previewing
- [sus.nvim](https://github.com/TarunDaCoder/sus.nvim) for a little bit of fun
- and many more...
