#!/bin/bash

output_wall_dir=/media/disk/Documents/Sander/Afbeeldingen/Wallpapers/
temp_wall_dir=/tmp/wallpapers
url_wall_link=http://interfacelift.com/wallpaper/details/$1/
url_pic_link=http://interfacelift.com/wallpaper/7yz4ma1/

echo $url_wall_link

html=$(curl -s -L -A "Mozilla/5.0" $url_wall_link)

regex="imgload[[:punct:]]{2}([[:lower:]]*)[[:punct:]]{2}"

[[ "$html" =~ $regex ]] && pic_name=${BASH_REMATCH[1]}
echo "Name: "$pic_name

id_padded=$(printf "%05d" $1)
echo "Id: "$id_padded


echo $html | grep -o 'res_1080x1920_1\|res_1366x768_1\|res_1920x1080_1\|res_3840x1080_1\|res_3840x1200_1\|res_480x800_1' | 
        while IFS= read -r line
        do
                echo "---"

                size=$(echo "$line" | cut -d _ -f 2)
                filename=$id_padded"_"$pic_name"_"$size".jpg"
                echo "from:" $url_pic_link$filename
                echo "to:"   $output_wall_dir$size/$filename
                rm -f $url_pic_link$filename
                curl -s -L -A "Mozilla/5.0" $url_pic_link$filename > $output_wall_dir$size/$filename
        done

