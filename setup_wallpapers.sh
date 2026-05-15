#!/bin/bash

# Script to create KDE light/dark wallpaper config for folders with 2 images

set -euo pipefail

base_dir="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

# Template metadata.json
template='{
    "KPlugin": {
        "Authors": [{"Name": "Andy Betts"}],
        "Id": "FOLDER_NAME",
        "License": "CC-BY-SA-4.0",
        "Name": "FOLDER_NAME"
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