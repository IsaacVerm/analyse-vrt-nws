# analyse-vrt-nws

Run `./extract.sh` to extract all the places from the VRT article titles. Specify the file within the script as `golden-standard-places.json` if you want to test how good the prompt is. Specify the file as `article-titles.json` if you want to extract the places from all article titles available. The resulting places can be found in `places-extracted.json`. This will be an object (because a JSON Schema should always be an object), while `Datasette` (which I use to inspect the data) expects an array. So before using `Datasette` make sure to remove the first object level `articles` and keep the array inside.

Run `./compare.sh` to compare the golden standard with the places extracted.
