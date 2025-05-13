# Install Yazi
  $ sudo pacman -S yazi ffmpeg 7zip jq poppler fd ripgrep fzf zoxide imagemagick

# Install Paru
  $ sudo pacman -S --needed base-devel
  $ mkdir ~/.AUR
  $ cd ~/.AUR
  $ git clone https://aur.archlinux.org/paru.git
  $ cd paru
  $ makepkg -si

# Install resvg
  $ paru -S resvg

# Yazi Config on .bashrc
function y() {
	local tmp="$(mktemp -t "yazi-cwd.XXXXXX")" cwd
	yazi "$@" --cwd-file="$tmp"
	if cwd="$(command cat -- "$tmp")" && [ -n "$cwd" ] && [ "$cwd" != "$PWD" ]; then
		builtin cd -- "$cwd"
	fi
	rm -f -- "$tmp"
}

# Install dracula theme
  $ mkdir ~/.config/yazi
  $ ya pack -a yazi-rs/flavors:dracula
  $ nvim ~/.config/yazi/theme.toml
        [flavor]
        dark = "dracula"

# Yazi Shortcut
h j k l // Movment
gg      // Go To Top
G       // Go To Bottom
g       // Go
q       // Quit

<Space> // Select
<C+a>   // Select All
v       // Visual Mode


o // Open
r // Rename

t         // New Tab 
1 2 3...  // Tabs
[]        // Next Tab
<C+c>     // Close Tab

: // Command Line

y // Copy 
x // Cut 
p // Past
d // Delete

. // Hidden Files
, // Sort 
/ // Search
f // Filter

m      // Show Detels
<Tab>  // Show Detels
