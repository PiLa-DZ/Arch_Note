# Install Neovim Widh NVchad
    // Install
        $ sudo pacman -S lua
        $ git clone https://github.com/NvChad/starter ~/.config/nvim && nvim

    // Uninstall
        // Linux / MacOS (unix)
            rm -rf ~/.config/nvim
            rm -rf ~/.local/state/nvim
            rm -rf ~/.local/share/nvim
        // Flatpak (linux)
            rm -rf ~/.var/app/io.neovim.nvim/config/nvim
            rm -rf ~/.var/app/io.neovim.nvim/data/nvim
            rm -rf ~/.var/app/io.neovim.nvim/.local/state/nvim
        // Windows CMD
            rd -r ~\AppData\Local\nvim
            rd -r ~\AppData\Local\nvim-data
        // Windows PowerShell
            rm -Force ~\AppData\Local\nvim
            rm -Force ~\AppData\Local\nvim-data
    
    // Shortcut
    :Lazy sync
    <Space+t+h> --> change theems
    <Space+c+h> --> Chit Sheet
