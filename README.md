# analyse-vrt-nws

Run `cat golden-standard-places.json | jq '.[].title' | llm --schema places.schema.json 'extract all places in these article titles'` to extract all the places from the VRT article titles used in the golden standard test.

Run `./compare.sh` to compare the golden standard with the places extracted.