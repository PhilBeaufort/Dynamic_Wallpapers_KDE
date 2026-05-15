# Light/Dark Wallpapers

This repository contains KDE wallpaper folders and a helper script to convert and install them locally.
The wallpaper used are from this repo: https://github.com/manishprivet/dynamic-gnome-wallpapers

## Use the existing wallpapers

Copy all the folders in `/wallpapers` to `~/.local/share/wallpapers`

You can also use this command from project root:
```bash
mkdir -p ~/.local/share/wallpapers
cp -r wallpapers/* ~/.local/share/wallpapers/
```

## Requirements for script

### Ubuntu / Kubuntu / Debian setup

- ImageMagick:

```bash
sudo apt update
sudo apt install imagemagick
```

## 1. Script with User interface
You will be prompted for the wallpaper name and images to create a kde dynamic wallpaper
- Source: https://github.com/DenysMb/KDE-DynamicThemeGenerator

Run this script

```bash
bash dth.sh
```

## 2. How to use repo script
Create a kde dynamic wallpaper in this repo

1. Create a folder with the desired wallypaper name
2. Add 2 images to the folder for light/dark, file name must end by `0` for light and `1` for dark
3. Run the script 
    ```bash
        bash setup_wallpaper.sh
    ```
4. The converted wallpaper folders are moved into `wallpapers/` inside this repository.

## Notes

- The script requires `identify` from ImageMagick.
- It renames wallpaper images to `<width>x<height>.<ext>` and generates `metadata.json` files.
- If color analysis works, the script also adds `X-KDE-PlasmaImageWallpaper-AccentColor` entries.

## Examples

All available wallpapers with Light/Dark variants:

| Name | Light | Dark |
|------|-------|------|
| AnimeRoomBoard | [![Light](wallpapers/AnimeRoomBoard/contents/images/1920x1046.jpg)](wallpapers/AnimeRoomBoard/contents/images/1920x1046.jpg) | [![Dark](wallpapers/AnimeRoomBoard/contents/images_dark/1920x1046.jpg)](wallpapers/AnimeRoomBoard/contents/images_dark/1920x1046.jpg) |
| Aura | [![Light](wallpapers/Aura/contents/images/680x510.png)](wallpapers/Aura/contents/images/680x510.png) | [![Dark](wallpapers/Aura/contents/images_dark/2048x2048.png)](wallpapers/Aura/contents/images_dark/2048x2048.png) |
| Blobs | [![Light](wallpapers/Blobs/contents/images/4096x2160.svg)](wallpapers/Blobs/contents/images/4096x2160.svg) | [![Dark](wallpapers/Blobs/contents/images_dark/4096x2160.svg)](wallpapers/Blobs/contents/images_dark/4096x2160.svg) |
| Carvan | [![Light](wallpapers/Carvan/contents/images/3024x1964.png)](wallpapers/Carvan/contents/images/3024x1964.png) | [![Dark](wallpapers/Carvan/contents/images_dark/3024x1964.png)](wallpapers/Carvan/contents/images_dark/3024x1964.png) |
| CatherineRoom | [![Light](wallpapers/CatherineRoom/contents/images/1920x1063.jpg)](wallpapers/CatherineRoom/contents/images/1920x1063.jpg) | [![Dark](wallpapers/CatherineRoom/contents/images_dark/1920x1063.jpg)](wallpapers/CatherineRoom/contents/images_dark/1920x1063.jpg) |
| ChromeOSBlues | [![Light](wallpapers/ChromeOSBlues/contents/images/2960x2960.png)](wallpapers/ChromeOSBlues/contents/images/2960x2960.png) | [![Dark](wallpapers/ChromeOSBlues/contents/images_dark/3412x3412.png)](wallpapers/ChromeOSBlues/contents/images_dark/3412x3412.png) |
| ChromeOSEarth | [![Light](wallpapers/ChromeOSEarth/contents/images/2960x2960.png)](wallpapers/ChromeOSEarth/contents/images/2960x2960.png) | [![Dark](wallpapers/ChromeOSEarth/contents/images_dark/2960x2960.png)](wallpapers/ChromeOSEarth/contents/images_dark/2960x2960.png) |
| ChromeOSFire | [![Light](wallpapers/ChromeOSFire/contents/images/2960x2960.png)](wallpapers/ChromeOSFire/contents/images/2960x2960.png) | [![Dark](wallpapers/ChromeOSFire/contents/images_dark/2960x2960.png)](wallpapers/ChromeOSFire/contents/images_dark/2960x2960.png) |
| ChromeOSGreens | [![Light](wallpapers/ChromeOSGreens/contents/images/2960x2960.png)](wallpapers/ChromeOSGreens/contents/images/2960x2960.png) | [![Dark](wallpapers/ChromeOSGreens/contents/images_dark/3412x3412.png)](wallpapers/ChromeOSGreens/contents/images_dark/3412x3412.png) |
| ChromeOSReds | [![Light](wallpapers/ChromeOSReds/contents/images/2960x2960.png)](wallpapers/ChromeOSReds/contents/images/2960x2960.png) | [![Dark](wallpapers/ChromeOSReds/contents/images_dark/3412x3412.png)](wallpapers/ChromeOSReds/contents/images_dark/3412x3412.png) |
| ChromeOSWater | [![Light](wallpapers/ChromeOSWater/contents/images/2960x2960.png)](wallpapers/ChromeOSWater/contents/images/2960x2960.png) | [![Dark](wallpapers/ChromeOSWater/contents/images_dark/2960x2960.png)](wallpapers/ChromeOSWater/contents/images_dark/2960x2960.png) |
| ChromeOSWind | [![Light](wallpapers/ChromeOSWind/contents/images/2960x2960.png)](wallpapers/ChromeOSWind/contents/images/2960x2960.png) | [![Dark](wallpapers/ChromeOSWind/contents/images_dark/2960x2960.png)](wallpapers/ChromeOSWind/contents/images_dark/2960x2960.png) |
| ChromeOSYellows | [![Light](wallpapers/ChromeOSYellows/contents/images/2960x2960.png)](wallpapers/ChromeOSYellows/contents/images/2960x2960.png) | [![Dark](wallpapers/ChromeOSYellows/contents/images_dark/3412x3412.png)](wallpapers/ChromeOSYellows/contents/images_dark/3412x3412.png) |
| Coast | [![Light](wallpapers/Coast/contents/images/2560x1440.jpg)](wallpapers/Coast/contents/images/2560x1440.jpg) | [![Dark](wallpapers/Coast/contents/images_dark/2560x1440.jpg)](wallpapers/Coast/contents/images_dark/2560x1440.jpg) |
| CorporationHall | [![Light](wallpapers/CorporationHall/contents/images/1920x1063.jpg)](wallpapers/CorporationHall/contents/images/1920x1063.jpg) | [![Dark](wallpapers/CorporationHall/contents/images_dark/1920x1063.jpg)](wallpapers/CorporationHall/contents/images_dark/1920x1063.jpg) |
| CorporationStreet | [![Light](wallpapers/CorporationStreet/contents/images/1920x1060.jpg)](wallpapers/CorporationStreet/contents/images/1920x1060.jpg) | [![Dark](wallpapers/CorporationStreet/contents/images_dark/1920x1060.jpg)](wallpapers/CorporationStreet/contents/images_dark/1920x1060.jpg) |
| DeadTree | [![Light](wallpapers/DeadTree/contents/images/3000x3750.png)](wallpapers/DeadTree/contents/images/3000x3750.png) | [![Dark](wallpapers/DeadTree/contents/images_dark/3000x3750.png)](wallpapers/DeadTree/contents/images_dark/3000x3750.png) |
| Desert | [![Light](wallpapers/Desert/contents/images/3456x2160.jpg)](wallpapers/Desert/contents/images/3456x2160.jpg) | [![Dark](wallpapers/Desert/contents/images_dark/3456x2160.jpg)](wallpapers/Desert/contents/images_dark/3456x2160.jpg) |
| DesertPeak | [![Light](wallpapers/DesertPeak/contents/images/3072x3072.jpg)](wallpapers/DesertPeak/contents/images/3072x3072.jpg) | [![Dark](wallpapers/DesertPeak/contents/images_dark/3072x3072.jpg)](wallpapers/DesertPeak/contents/images_dark/3072x3072.jpg) |
| DesertTree | [![Light](wallpapers/DesertTree/contents/images/3072x3072.jpg)](wallpapers/DesertTree/contents/images/3072x3072.jpg) | [![Dark](wallpapers/DesertTree/contents/images_dark/3072x3072.jpg)](wallpapers/DesertTree/contents/images_dark/3072x3072.jpg) |
| DesertValley | [![Light](wallpapers/DesertValley/contents/images/3072x3072.jpg)](wallpapers/DesertValley/contents/images/3072x3072.jpg) | [![Dark](wallpapers/DesertValley/contents/images_dark/3072x3072.jpg)](wallpapers/DesertValley/contents/images_dark/3072x3072.jpg) |
| Disco | [![Light](wallpapers/Disco/contents/images/4096x2160.jpg)](wallpapers/Disco/contents/images/4096x2160.jpg) | [![Dark](wallpapers/Disco/contents/images_dark/4096x2160.jpg)](wallpapers/Disco/contents/images_dark/4096x2160.jpg) |
| Dome | [![Light](wallpapers/Dome/contents/images/6016x6016.png)](wallpapers/Dome/contents/images/6016x6016.png) | [![Dark](wallpapers/Dome/contents/images_dark/6016x6016.png)](wallpapers/Dome/contents/images_dark/6016x6016.png) |
| Drool | [![Light](wallpapers/Drool/contents/images/4096x2560.svg)](wallpapers/Drool/contents/images/4096x2560.svg) | [![Dark](wallpapers/Drool/contents/images_dark/4096x2560.svg)](wallpapers/Drool/contents/images_dark/4096x2560.svg) |
| DynamicFry | [![Light](wallpapers/DynamicFry/contents/images/1920x1200.png)](wallpapers/DynamicFry/contents/images/1920x1200.png) | [![Dark](wallpapers/DynamicFry/contents/images_dark/1920x1200.png)](wallpapers/DynamicFry/contents/images_dark/1920x1200.png) |
| Elementary-OS-Odin | [![Light](wallpapers/Elementary-OS-Odin/contents/images/3840x2160.jpg)](wallpapers/Elementary-OS-Odin/contents/images/3840x2160.jpg) | [![Dark](wallpapers/Elementary-OS-Odin/contents/images_dark/3840x2160.jpg)](wallpapers/Elementary-OS-Odin/contents/images_dark/3840x2160.jpg) |
| EOS-SnowCappedMountain | [![Light](wallpapers/EOS-SnowCappedMountain/contents/images/4200x2800.jpg)](wallpapers/EOS-SnowCappedMountain/contents/images/4200x2800.jpg) | [![Dark](wallpapers/EOS-SnowCappedMountain/contents/images_dark/4200x2800.jpg)](wallpapers/EOS-SnowCappedMountain/contents/images_dark/4200x2800.jpg) |
| EOS-Sunset | [![Light](wallpapers/EOS-Sunset/contents/images/5470x3646.jpg)](wallpapers/EOS-Sunset/contents/images/5470x3646.jpg) | [![Dark](wallpapers/EOS-Sunset/contents/images_dark/5470x3646.jpg)](wallpapers/EOS-Sunset/contents/images_dark/5470x3646.jpg) |
| EOS-WeYamle | [![Light](wallpapers/EOS-WeYamle/contents/images/3840x2400.jpg)](wallpapers/EOS-WeYamle/contents/images/3840x2400.jpg) | [![Dark](wallpapers/EOS-WeYamle/contents/images_dark/3840x2400.jpg)](wallpapers/EOS-WeYamle/contents/images_dark/3840x2400.jpg) |
| ExternalHimitsuHouse | [![Light](wallpapers/ExternalHimitsuHouse/contents/images/1920x1063.jpg)](wallpapers/ExternalHimitsuHouse/contents/images/1920x1063.jpg) | [![Dark](wallpapers/ExternalHimitsuHouse/contents/images_dark/1920x1063.jpg)](wallpapers/ExternalHimitsuHouse/contents/images_dark/1920x1063.jpg) |
| FedeMarinMountain | [![Light](wallpapers/FedeMarinMountain/contents/images/5184x3888.png)](wallpapers/FedeMarinMountain/contents/images/5184x3888.png) | [![Dark](wallpapers/FedeMarinMountain/contents/images_dark/5184x3888.png)](wallpapers/FedeMarinMountain/contents/images_dark/5184x3888.png) |
| Firewatch | [![Light](wallpapers/Firewatch/contents/images/3840x2160.jpg)](wallpapers/Firewatch/contents/images/3840x2160.jpg) | [![Dark](wallpapers/Firewatch/contents/images_dark/3840x2160.jpg)](wallpapers/Firewatch/contents/images_dark/3840x2160.jpg) |
| FluidifiedST | [![Light](wallpapers/FluidifiedST/contents/images/4445x2873.png)](wallpapers/FluidifiedST/contents/images/4445x2873.png) | [![Dark](wallpapers/FluidifiedST/contents/images_dark/4445x2874.png)](wallpapers/FluidifiedST/contents/images_dark/4445x2874.png) |
| FocalFossa | [![Light](wallpapers/FocalFossa/contents/images/1920x1080.png)](wallpapers/FocalFossa/contents/images/1920x1080.png) | [![Dark](wallpapers/FocalFossa/contents/images_dark/4096x2304.png)](wallpapers/FocalFossa/contents/images_dark/4096x2304.png) |
| Fuji | [![Light](wallpapers/Fuji/contents/images/1920x1080.png)](wallpapers/Fuji/contents/images/1920x1080.png) | [![Dark](wallpapers/Fuji/contents/images_dark/1920x1080.png)](wallpapers/Fuji/contents/images_dark/1920x1080.png) |
| Globe | [![Light](wallpapers/Globe/contents/images/3412x3412.png)](wallpapers/Globe/contents/images/3412x3412.png) | [![Dark](wallpapers/Globe/contents/images_dark/3412x3412.png)](wallpapers/Globe/contents/images_dark/3412x3412.png) |
| GroovyGorilla | [![Light](wallpapers/GroovyGorilla/contents/images/4096x2304.png)](wallpapers/GroovyGorilla/contents/images/4096x2304.png) | [![Dark](wallpapers/GroovyGorilla/contents/images_dark/4096x2304.png)](wallpapers/GroovyGorilla/contents/images_dark/4096x2304.png) |
| Hills | [![Light](wallpapers/Hills/contents/images/4096x2621.png)](wallpapers/Hills/contents/images/4096x2621.png) | [![Dark](wallpapers/Hills/contents/images_dark/4096x2621.png)](wallpapers/Hills/contents/images_dark/4096x2621.png) |
| HimitsuHouse | [![Light](wallpapers/HimitsuHouse/contents/images/1920x1063.jpg)](wallpapers/HimitsuHouse/contents/images/1920x1063.jpg) | [![Dark](wallpapers/HimitsuHouse/contents/images_dark/1920x1063.jpg)](wallpapers/HimitsuHouse/contents/images_dark/1920x1063.jpg) |
| HirsuitHippo | [![Light](wallpapers/HirsuitHippo/contents/images/1920x1080.png)](wallpapers/HirsuitHippo/contents/images/1920x1080.png) | [![Dark](wallpapers/HirsuitHippo/contents/images_dark/1920x1080.png)](wallpapers/HirsuitHippo/contents/images_dark/1920x1080.png) |
| HirsuteHippoBlue | [![Light](wallpapers/HirsuteHippoBlue/contents/images/1920x1080.png)](wallpapers/HirsuteHippoBlue/contents/images/1920x1080.png) | [![Dark](wallpapers/HirsuteHippoBlue/contents/images_dark/4096x2304.png)](wallpapers/HirsuteHippoBlue/contents/images_dark/4096x2304.png) |
| Iphone13Red | [![Light](wallpapers/Iphone13Red/contents/images/1404x3040.jpg)](wallpapers/Iphone13Red/contents/images/1404x3040.jpg) | [![Dark](wallpapers/Iphone13Red/contents/images_dark/1404x3040.jpg)](wallpapers/Iphone13Red/contents/images_dark/1404x3040.jpg) |
| KagomeRoom | [![Light](wallpapers/KagomeRoom/contents/images/1920x1063.jpg)](wallpapers/KagomeRoom/contents/images/1920x1063.jpg) | [![Dark](wallpapers/KagomeRoom/contents/images_dark/1920x1063.jpg)](wallpapers/KagomeRoom/contents/images_dark/1920x1063.jpg) |
| Lakeside | [![Light](wallpapers/Lakeside/contents/images/7680x3215.png)](wallpapers/Lakeside/contents/images/7680x3215.png) | [![Dark](wallpapers/Lakeside/contents/images_dark/7680x3215.png)](wallpapers/Lakeside/contents/images_dark/7680x3215.png) |
| LakesideDeer | [![Light](wallpapers/LakesideDeer/contents/images/7680x3215.png)](wallpapers/LakesideDeer/contents/images/7680x3215.png) | [![Dark](wallpapers/LakesideDeer/contents/images_dark/7680x3215.png)](wallpapers/LakesideDeer/contents/images_dark/7680x3215.png) |
| LakeTheCliff | [![Light](wallpapers/LakeTheCliff/contents/images/3072x3072.jpg)](wallpapers/LakeTheCliff/contents/images/3072x3072.jpg) | [![Dark](wallpapers/LakeTheCliff/contents/images_dark/3072x3072.jpg)](wallpapers/LakeTheCliff/contents/images_dark/3072x3072.jpg) |
| Libadwaita | [![Light](wallpapers/Libadwaita/contents/images/4096x2160.jpg)](wallpapers/Libadwaita/contents/images/4096x2160.jpg) | [![Dark](wallpapers/Libadwaita/contents/images_dark/4096x2160.jpg)](wallpapers/Libadwaita/contents/images_dark/4096x2160.jpg) |
| LofiAlexandra | [![Light](wallpapers/LofiAlexandra/contents/images/2880x1620.png)](wallpapers/LofiAlexandra/contents/images/2880x1620.png) | [![Dark](wallpapers/LofiAlexandra/contents/images_dark/2880x1620.png)](wallpapers/LofiAlexandra/contents/images_dark/2880x1620.png) |
| LofiCity | [![Light](wallpapers/LofiCity/contents/images/12500x8334.png)](wallpapers/LofiCity/contents/images/12500x8334.png) | [![Dark](wallpapers/LofiCity/contents/images_dark/12500x8334.png)](wallpapers/LofiCity/contents/images_dark/12500x8334.png) |
| MagicLake | [![Light](wallpapers/MagicLake/contents/images/3840x2160.jpg)](wallpapers/MagicLake/contents/images/3840x2160.jpg) | [![Dark](wallpapers/MagicLake/contents/images_dark/3840x2160.png)](wallpapers/MagicLake/contents/images_dark/3840x2160.png) |
| MaterialMountains | [![Light](wallpapers/MaterialMountains/contents/images/6000x3376.png)](wallpapers/MaterialMountains/contents/images/6000x3376.png) | [![Dark](wallpapers/MaterialMountains/contents/images_dark/6000x3376.png)](wallpapers/MaterialMountains/contents/images_dark/6000x3376.png) |
| Minimal Mojave | [![Light](wallpapers/Minimal%20Mojave/contents/images/5120x2880.jpg)](wallpapers/Minimal%20Mojave/contents/images/5120x2880.jpg) | [![Dark](wallpapers/Minimal%20Mojave/contents/images_dark/5120x2880.jpg)](wallpapers/Minimal%20Mojave/contents/images_dark/5120x2880.jpg) |
| MojaveV2 | [![Light](wallpapers/MojaveV2/contents/images/6000x4000.jpg)](wallpapers/MojaveV2/contents/images/6000x4000.jpg) | [![Dark](wallpapers/MojaveV2/contents/images_dark/6000x4000.jpg)](wallpapers/MojaveV2/contents/images_dark/6000x4000.jpg) |
| MountainsIsland | [![Light](wallpapers/MountainsIsland/contents/images/3000x3750.png)](wallpapers/MountainsIsland/contents/images/3000x3750.png) | [![Dark](wallpapers/MountainsIsland/contents/images_dark/3000x3750.png)](wallpapers/MountainsIsland/contents/images_dark/3000x3750.png) |
| Ocean | [![Light](wallpapers/Ocean/contents/images/4096x2621.png)](wallpapers/Ocean/contents/images/4096x2621.png) | [![Dark](wallpapers/Ocean/contents/images_dark/4096x2621.png)](wallpapers/Ocean/contents/images_dark/4096x2621.png) |
| PadarIsland | [![Light](wallpapers/PadarIsland/contents/images/5399x3599.png)](wallpapers/PadarIsland/contents/images/5399x3599.png) | [![Dark](wallpapers/PadarIsland/contents/images_dark/5399x3599.png)](wallpapers/PadarIsland/contents/images_dark/5399x3599.png) |
| PlasticBeach | [![Light](wallpapers/PlasticBeach/contents/images/3840x2160.png)](wallpapers/PlasticBeach/contents/images/3840x2160.png) | [![Dark](wallpapers/PlasticBeach/contents/images_dark/3840x2160.png)](wallpapers/PlasticBeach/contents/images_dark/3840x2160.png) |
| Plateau | [![Light](wallpapers/Plateau/contents/images/4096x2621.png)](wallpapers/Plateau/contents/images/4096x2621.png) | [![Dark](wallpapers/Plateau/contents/images_dark/4096x2621.png)](wallpapers/Plateau/contents/images_dark/4096x2621.png) |
| Riverside | [![Light](wallpapers/Riverside/contents/images/1920x1061.jpg)](wallpapers/Riverside/contents/images/1920x1061.jpg) | [![Dark](wallpapers/Riverside/contents/images_dark/1920x1061.jpg)](wallpapers/Riverside/contents/images_dark/1920x1061.jpg) |
| Rock | [![Light](wallpapers/Rock/contents/images/3412x3412.png)](wallpapers/Rock/contents/images/3412x3412.png) | [![Dark](wallpapers/Rock/contents/images_dark/3412x3412.png)](wallpapers/Rock/contents/images_dark/3412x3412.png) |
| Rocknegy | [![Light](wallpapers/Rocknegy/contents/images/3412x3412.png)](wallpapers/Rocknegy/contents/images/3412x3412.png) | [![Dark](wallpapers/Rocknegy/contents/images_dark/3412x3412.png)](wallpapers/Rocknegy/contents/images_dark/3412x3412.png) |
| Rocksketto | [![Light](wallpapers/Rocksketto/contents/images/3412x3412.png)](wallpapers/Rocksketto/contents/images/3412x3412.png) | [![Dark](wallpapers/Rocksketto/contents/images_dark/3412x3412.png)](wallpapers/Rocksketto/contents/images_dark/3412x3412.png) |
| RockyMountain | [![Light](wallpapers/RockyMountain/contents/images/5760x3840.jpg)](wallpapers/RockyMountain/contents/images/5760x3840.jpg) | [![Dark](wallpapers/RockyMountain/contents/images_dark/5760x3840.jpg)](wallpapers/RockyMountain/contents/images_dark/5760x3840.jpg) |
| SolidDesert | [![Light](wallpapers/SolidDesert/contents/images/4096x2621.png)](wallpapers/SolidDesert/contents/images/4096x2621.png) | [![Dark](wallpapers/SolidDesert/contents/images_dark/4096x2621.png)](wallpapers/SolidDesert/contents/images_dark/4096x2621.png) |
| SolidForest | [![Light](wallpapers/SolidForest/contents/images/3530x2647.png)](wallpapers/SolidForest/contents/images/3530x2647.png) | [![Dark](wallpapers/SolidForest/contents/images_dark/3530x2647.png)](wallpapers/SolidForest/contents/images_dark/3530x2647.png) |
| SolidIsland | [![Light](wallpapers/SolidIsland/contents/images/4096x2621.png)](wallpapers/SolidIsland/contents/images/4096x2621.png) | [![Dark](wallpapers/SolidIsland/contents/images_dark/4096x2621.png)](wallpapers/SolidIsland/contents/images_dark/4096x2621.png) |
| SolidMountain | [![Light](wallpapers/SolidMountain/contents/images/4096x2621.png)](wallpapers/SolidMountain/contents/images/4096x2621.png) | [![Dark](wallpapers/SolidMountain/contents/images_dark/4096x2621.png)](wallpapers/SolidMountain/contents/images_dark/4096x2621.png) |
| Solitude | [![Light](wallpapers/Solitude/contents/images/4096x2621.png)](wallpapers/Solitude/contents/images/4096x2621.png) | [![Dark](wallpapers/Solitude/contents/images_dark/4096x2621.png)](wallpapers/Solitude/contents/images_dark/4096x2621.png) |
| StepbyStep | [![Light](wallpapers/StepbyStep/contents/images/5120x2880.png)](wallpapers/StepbyStep/contents/images/5120x2880.png) | [![Dark](wallpapers/StepbyStep/contents/images_dark/5120x2880.png)](wallpapers/StepbyStep/contents/images_dark/5120x2880.png) |
| StevenUniverse | [![Light](wallpapers/StevenUniverse/contents/images/1920x1080.png)](wallpapers/StevenUniverse/contents/images/1920x1080.png) | [![Dark](wallpapers/StevenUniverse/contents/images_dark/1920x1080.png)](wallpapers/StevenUniverse/contents/images_dark/1920x1080.png) |
| Symbolics | [![Light](wallpapers/Symbolics/contents/images/4096x2160.png)](wallpapers/Symbolics/contents/images/4096x2160.png) | [![Dark](wallpapers/Symbolics/contents/images_dark/4096x2160.png)](wallpapers/Symbolics/contents/images_dark/4096x2160.png) |
| TheBeach | [![Light](wallpapers/TheBeach/contents/images/3072x3072.jpg)](wallpapers/TheBeach/contents/images/3072x3072.jpg) | [![Dark](wallpapers/TheBeach/contents/images_dark/3072x3072.jpg)](wallpapers/TheBeach/contents/images_dark/3072x3072.jpg) |
| TheDesert | [![Light](wallpapers/TheDesert/contents/images/3072x3072.jpg)](wallpapers/TheDesert/contents/images/3072x3072.jpg) | [![Dark](wallpapers/TheDesert/contents/images_dark/3072x3072.jpg)](wallpapers/TheDesert/contents/images_dark/3072x3072.jpg) |
| TheLake | [![Light](wallpapers/TheLake/contents/images/3072x3072.jpg)](wallpapers/TheLake/contents/images/3072x3072.jpg) | [![Dark](wallpapers/TheLake/contents/images_dark/3072x3072.jpg)](wallpapers/TheLake/contents/images_dark/3072x3072.jpg) |
| TokyoStreet | [![Light](wallpapers/TokyoStreet/contents/images/3200x1800.png)](wallpapers/TokyoStreet/contents/images/3200x1800.png) | [![Dark](wallpapers/TokyoStreet/contents/images_dark/3200x1800.png)](wallpapers/TokyoStreet/contents/images_dark/3200x1800.png) |
| Truchet | [![Light](wallpapers/Truchet/contents/images/4096x2160.jpg)](wallpapers/Truchet/contents/images/4096x2160.jpg) | [![Dark](wallpapers/Truchet/contents/images_dark/4096x2160.jpg)](wallpapers/Truchet/contents/images_dark/4096x2160.jpg) |
| UbuntuMinimal | [![Light](wallpapers/UbuntuMinimal/contents/images/4096x2304.jpg)](wallpapers/UbuntuMinimal/contents/images/4096x2304.jpg) | [![Dark](wallpapers/UbuntuMinimal/contents/images_dark/4096x2304.jpg)](wallpapers/UbuntuMinimal/contents/images_dark/4096x2304.jpg) |
| Viragegy | [![Light](wallpapers/Viragegy/contents/images/3412x3412.png)](wallpapers/Viragegy/contents/images/3412x3412.png) | [![Dark](wallpapers/Viragegy/contents/images_dark/3412x3412.png)](wallpapers/Viragegy/contents/images_dark/3412x3412.png) |
| Viragharom | [![Light](wallpapers/Viragharom/contents/images/3412x3412.png)](wallpapers/Viragharom/contents/images/3412x3412.png) | [![Dark](wallpapers/Viragharom/contents/images_dark/3412x3412.png)](wallpapers/Viragharom/contents/images_dark/3412x3412.png) |
| Viragnegy | [![Light](wallpapers/Viragnegy/contents/images/3412x3412.png)](wallpapers/Viragnegy/contents/images/3412x3412.png) | [![Dark](wallpapers/Viragnegy/contents/images_dark/3412x3412.png)](wallpapers/Viragnegy/contents/images_dark/3412x3412.png) |
| WaterHill | [![Light](wallpapers/WaterHill/contents/images/4096x2621.png)](wallpapers/WaterHill/contents/images/4096x2621.png) | [![Dark](wallpapers/WaterHill/contents/images_dark/4096x2621.png)](wallpapers/WaterHill/contents/images_dark/4096x2621.png) |
| WhiteLighthouse | [![Light](wallpapers/WhiteLighthouse/contents/images/6000x3375.jpg)](wallpapers/WhiteLighthouse/contents/images/6000x3375.jpg) | [![Dark](wallpapers/WhiteLighthouse/contents/images_dark/6000x3375.jpg)](wallpapers/WhiteLighthouse/contents/images_dark/6000x3375.jpg) |
| Win11Lake | [![Light](wallpapers/Win11Lake/contents/images/3840x2400.jpg)](wallpapers/Win11Lake/contents/images/3840x2400.jpg) | [![Dark](wallpapers/Win11Lake/contents/images_dark/6400x4000.jpg)](wallpapers/Win11Lake/contents/images_dark/6400x4000.jpg) |
| Windows-11 | [![Light](wallpapers/Windows-11/contents/images/3840x2400.jpg)](wallpapers/Windows-11/contents/images/3840x2400.jpg) | [![Dark](wallpapers/Windows-11/contents/images_dark/3840x2400.jpg)](wallpapers/Windows-11/contents/images_dark/3840x2400.jpg) |
| Windows-11-2 | [![Light](wallpapers/Windows-11-2/contents/images/2736x1539.jpg)](wallpapers/Windows-11-2/contents/images/2736x1539.jpg) | [![Dark](wallpapers/Windows-11-2/contents/images_dark/2736x1539.jpg)](wallpapers/Windows-11-2/contents/images_dark/2736x1539.jpg) |
| Windows-11-3 | [![Light](wallpapers/Windows-11-3/contents/images/2736x1539.jpg)](wallpapers/Windows-11-3/contents/images/2736x1539.jpg) | [![Dark](wallpapers/Windows-11-3/contents/images_dark/2736x1539.jpg)](wallpapers/Windows-11-3/contents/images_dark/2736x1539.jpg) |
| Wiravketto | [![Light](wallpapers/Wiravketto/contents/images/3412x3412.png)](wallpapers/Wiravketto/contents/images/3412x3412.png) | [![Dark](wallpapers/Wiravketto/contents/images_dark/3412x3412.png)](wallpapers/Wiravketto/contents/images_dark/3412x3412.png) |
| ZorinMountainFog | [![Light](wallpapers/ZorinMountainFog/contents/images/5120x2610.jpg)](wallpapers/ZorinMountainFog/contents/images/5120x2610.jpg) | [![Dark](wallpapers/ZorinMountainFog/contents/images_dark/5120x2610.jpg)](wallpapers/ZorinMountainFog/contents/images_dark/5120x2610.jpg) |
