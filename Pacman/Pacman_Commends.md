# pacman -S ================================================
## Install Package 
    $ sudo pacman -S Package_Name
## Update
    $ sudo pacman -Sy
## Force Update
    $ sudo pacman -Syy
## Upgrade
    $ sudo pacman -Syu
## Clear Chash
    $ df -h
    $ sudo pacman -Scc
## Search
    $ sudo pacman -Ss Package_Name
    $ sudo pacman -Ss ^Package_Name


# pacman -R ================================================
## Remeve
    $ sudo pacman -R 
## Remeve All Debandensis
    $ sudo pacman -Rns
## Remeve Unneeded Debandensis
    $ sudo pacman -Qqdt | sudo pacman -Rns -


# pacman -Q ================================================
## Print All Package With Version
    $ sudo pacman -Q 
## Print All Package
    $ sudo pacman -Qq
## Print All Package With More Informations
    $ sudo pacman -Qs
## Print More Informations About one Package
    $ sudo pacman -Qi Package_Name
## Print How Many Packages Do You Have
    $ sudo pacman -Q | wc -l 
## Print How Many Packages You Install
    // From All Repos
        $ sudo pacman -Qe | wc -l
    // From Main Repo
        $ sudo pacman -Qn | wc -l 
    // From Another Repos 
        $ sudo pacman -Qm | wc -l 

## Print Package Lockation
    $ sudo pacman -Ql Package_Name
## Print Unneeded Debandensis
    $ sudo pacman -Qdt


# Pacman Config ============================================
## Add Colors
    $ sudo nvim /etc/pacman.conf
        // Uncomment # Color
        // Uncomment # VerbosePkgLists
        // Add ILoveCandy Under this line
            VerbosePkgLists
            ILoveCandy

# Select Mirrors ===========================================
    $ sudo reflector 
        --save /etc/pacman.d/mirrorlist 
        --country Germany 
        --latest 20 
        --protocol http

# Downgrade Package ========================================
## You have to Donload "downgrade" From AUR With AUR_Helper
    $ paru -S downgrade
    $ sudo downgrade Package_Name

# AUR Config
# AUR Config ===============================================
    $ sudo /etc/makepkg.conf
        // Uncomment # MAKEFLAGS="-j4"


# More ====================================
    $ paru -p --stats






