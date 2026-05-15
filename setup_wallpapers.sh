#!/bin/bash

# Script to create KDE light/dark wallpaper config for folders with 2 images

set -euo pipefail

base_dir="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

# Template metadata.json
template='{
    "KPlugin": {
        "Authors": [
            {
                "Email": "anditosan@kde.org",
                "Name": "Andy Betts",
                "Name[ar]": "أندي بتتس",
                "Name[az]": "Andy Betts",
                "Name[be]": "Andy Betts",
                "Name[bg]": "Andy Betts",
                "Name[ca@valencia]": "Andy Betts",
                "Name[ca]": "Andy Betts",
                "Name[cs]": "Andy Betts",
                "Name[de]": "Andy Betts",
                "Name[el]": "Andy Betts",
                "Name[en_GB]": "Andy Betts",
                "Name[eo]": "Andy Betts",
                "Name[es]": "Andy Betts",
                "Name[eu]": "Andy Betts",
                "Name[fi]": "Andy Betts",
                "Name[fr]": "Andy Betts",
                "Name[gl]": "Andy Betts",
                "Name[he]": "אנדי בטס",
                "Name[hu]": "Andy Betts",
                "Name[ia]": "Andy Betts",
                "Name[is]": "Andy Betts",
                "Name[it]": "Andy Betts",
                "Name[ka]": "ენდი ბეთსი",
                "Name[ko]": "Andy Betts",
                "Name[lt]": "Andy Betts",
                "Name[lv]": "Andy Betts",
                "Name[nb]": "Andy Betts",
                "Name[nl]": "Andy Betts",
                "Name[nn]": "Andy Betts",
                "Name[pl]": "Andy Betts",
                "Name[pt_BR]": "Andy Betts",
                "Name[ro]": "Andy Betts",
                "Name[ru]": "Andy Betts",
                "Name[sa]": "एण्डी बेट्स्",
                "Name[sl]": "Andy Betts",
                "Name[sv]": "Andy Betts",
                "Name[tr]": "Andy Betts",
                "Name[uk]": "Енді Беттс",
                "Name[zh_CN]": "Andy Betts",
                "Name[zh_TW]": "Andy Betts"
            }
        ],
        "Id": "FOLDER_NAME",
        "License": "CC-BY-SA-4.0",
        "Name": "FOLDER_NAME",
        "Name[ar]": "FOLDER_NAME_AR",
        "Name[az]": "FOLDER_NAME",
        "Name[be]": "FOLDER_NAME",
        "Name[bg]": "FOLDER_NAME",
        "Name[ca@valencia]": "FOLDER_NAME",
        "Name[ca]": "FOLDER_NAME",
        "Name[cs]": "FOLDER_NAME",
        "Name[de]": "FOLDER_NAME",
        "Name[el]": "FOLDER_NAME",
        "Name[en_GB]": "FOLDER_NAME",
        "Name[eo]": "FOLDER_NAME",
        "Name[es]": "FOLDER_NAME",
        "Name[eu]": "FOLDER_NAME",
        "Name[fi]": "FOLDER_NAME",
        "Name[fr]": "FOLDER_NAME",
        "Name[gl]": "FOLDER_NAME",
        "Name[he]": "FOLDER_NAME",
        "Name[hu]": "FOLDER_NAME",
        "Name[ia]": "FOLDER_NAME",
        "Name[is]": "FOLDER_NAME",
        "Name[it]": "FOLDER_NAME",
        "Name[ka]": "FOLDER_NAME",
        "Name[ko]": "FOLDER_NAME",
        "Name[lt]": "FOLDER_NAME",
        "Name[lv]": "FOLDER_NAME",
        "Name[nb]": "FOLDER_NAME",
        "Name[nl]": "FOLDER_NAME",
        "Name[nn]": "FOLDER_NAME",
        "Name[pa]": "FOLDER_NAME",
        "Name[pl]": "FOLDER_NAME",
        "Name[pt_BR]": "FOLDER_NAME",
        "Name[ro]": "FOLDER_NAME",
        "Name[ru]": "FOLDER_NAME",
        "Name[sa]": "FOLDER_NAME",
        "Name[sl]": "FOLDER_NAME",
        "Name[sv]": "FOLDER_NAME",
        "Name[tr]": "FOLDER_NAME",
        "Name[uk]": "FOLDER_NAME",
        "Name[zh_CN]": "FOLDER_NAME",
        "Name[zh_TW]": "FOLDER_NAME"
    },
    "X-KDE-PlasmaImageWallpaper-AccentColor": {
        "Dark": "#018786",
        "Light": "#3d818d"
    }
}'

shopt -s nullglob

for dir in "$base_dir"/*/; do
    dir_name=$(basename "$dir")
    if [ "$dir_name" = "Mountain" ]; then
        continue
    fi

    image_files=()
    for ext in jpg jpeg png gif bmp webp; do
        for f in "$dir"/*.$ext; do
            [ -f "$f" ] && image_files+=("$f")
        done
        for f in "$dir"/contents/images/*.$ext; do
            [ -f "$f" ] && image_files+=("$f")
        done
        for f in "$dir"/contents/images_dark/*.$ext; do
            [ -f "$f" ] && image_files+=("$f")
        done
    done

    if [ "${#image_files[@]}" -ne 2 ]; then
        continue
    fi

    echo "Processing $dir_name"
    mkdir -p "$dir/contents/images"
    mkdir -p "$dir/contents/images_dark"

    mapfile -t sorted_files < <(
        for f in "${image_files[@]}"; do
            printf '%s\t%s\n' "$(basename "$f")" "$f"
        done | sort -t $'\t' -k1,1 -V | cut -f2-
    )

    light_dest="$dir/contents/images/$(basename "${sorted_files[0]}")"
    dark_dest="$dir/contents/images_dark/$(basename "${sorted_files[1]}")"

    if [ "${sorted_files[0]}" != "$light_dest" ]; then
        mv "${sorted_files[0]}" "$light_dest"
    fi
    if [ "${sorted_files[1]}" != "$dark_dest" ]; then
        mv "${sorted_files[1]}" "$dark_dest"
    fi

    metadata=$(printf '%s' "$template" | sed "s/FOLDER_NAME/$dir_name/g")
    echo "$metadata" > "$dir/metadata.json"
done