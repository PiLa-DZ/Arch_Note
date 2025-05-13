$ sudo pacman -S scrot
// To take screenshot

    // All Screen
    $ scrot

    // Select
    $ scrot --select
    $ scrot --select --line mode=edge

    // Only Window Focused
    $ scrot --focused
    $ scrot --focused --border

    // More
        // Take Screeshot form video
            $ scrot --select --freeze 
        // Capch Mouse Courser
            $ scrot -p
        // Man Page
            $ man scrot
    

    $ mkdri -p ~/Pictures/screenshots/
    $ scrot ~/Pictures/screenshots/img1.png
    $ scrot ~/Pictures/screenshots/%Y-%m-%d-%T-screenshot.png
