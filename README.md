# Light/Dark Wallpapers

This repository contains KDE wallpaper folders and a helper script to convert and install them locally.

## Use the existing wallpapers

Copy all the folders in `/wallpapers` to `~/.local/share/wallpapers`

You can also use this command from project root:
```bash
mkdir -p ~/.local/share/wallpapers
cp -r wallpapers/* ~/.local/share/wallpapers/
```

## Requirements

### Ubuntu / Kubuntu / Debian setup

- ImageMagick:

```bash
sudo apt update
sudo apt install imagemagick
```

## How to use

1. Create a folder with the desired wallypaper name
2. Add 2 images to the folder for light/dark, file name must end by `0` for light and `1` for dark
3. Run the script 
    ```bash
        bash setup_wallpaper.sh
    ```
4. The converted wallpaper folders are moved into `wallpapers/` inside this repository.

## With User interface

Run this script

```bash
bash dth.sh
```

## Notes

- The script requires `identify` from ImageMagick.
- It renames wallpaper images to `<width>x<height>.<ext>` and generates `metadata.json` files.
- If color analysis works, the script also adds `X-KDE-PlasmaImageWallpaper-AccentColor` entries.
