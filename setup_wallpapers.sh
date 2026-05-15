#!/bin/bash

# Script to create KDE light/dark wallpaper config for folders with 2 images

set -euo pipefail

if ! command -v identify &> /dev/null; then
    echo "Error: Program 'imagemagick' is not installed. Please install it to run this script."
    exit 1
fi

convert_cmd=()
if command -v magick &> /dev/null; then
    convert_cmd=(magick)
elif command -v convert &> /dev/null; then
    convert_cmd=(convert)
fi

get_primary_color() {
    local img="$1"
    if [ ${#convert_cmd[@]} -eq 0 ]; then
        return 1
    fi

    local color
    color="$("${convert_cmd[@]}" "$img" -resize 1x1\! -colorspace sRGB -format '#%[hex:p{0,0}]' info:- 2>/dev/null || true)"
    if [[ "$color" =~ ^#[0-9A-Fa-f]{6}$ ]]; then
        printf '%s' "${color,,}"
        return 0
    fi
    return 1
}

base_dir="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

# Template metadata.json
template='{
    "KPlugin": {
        "Authors": [{"Name": "Shrunk"}],
        "Id": "FOLDER_NAME",
        "License": "CC-BY-SA-4.0",
        "Name": "FOLDER_NAME"
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

    light_ext="${sorted_files[0]##*.}"
    dark_ext="${sorted_files[1]##*.}"
    light_dim=$(identify -format '%wx%h' "${sorted_files[0]}[0]")
    dark_dim=$(identify -format '%wx%h' "${sorted_files[1]}[0]")

    light_dest="$dir/contents/images/${light_dim}.${light_ext}"
    dark_dest="$dir/contents/images_dark/${dark_dim}.${dark_ext}"

    if [ "${sorted_files[0]}" != "$light_dest" ]; then
        mv "${sorted_files[0]}" "$light_dest"
    fi
    if [ "${sorted_files[1]}" != "$dark_dest" ]; then
        mv "${sorted_files[1]}" "$dark_dest"
    fi

    light_color=''
    dark_color=''
    if light_color=$(get_primary_color "$light_dest"); then
        :
    fi
    if dark_color=$(get_primary_color "$dark_dest"); then
        :
    fi

    if [ -n "$light_color" ] && [ -n "$dark_color" ]; then
        cat <<EOF > "$dir/metadata.json"
{
    "KPlugin": {
        "Authors": [{"Name": "Shrunk"}],
        "Id": "$dir_name",
        "License": "CC-BY-SA-4.0",
        "Name": "$dir_name"
    },
    "X-KDE-PlasmaImageWallpaper-AccentColor": {
        "Dark": "$dark_color",
        "Light": "$light_color"
    }
}
EOF
    else
        cat <<EOF > "$dir/metadata.json"
{
    "KPlugin": {
        "Authors": [{"Name": "Shrunk"}],
        "Id": "$dir_name",
        "License": "CC-BY-SA-4.0",
        "Name": "$dir_name"
    }
}
EOF
    fi
done