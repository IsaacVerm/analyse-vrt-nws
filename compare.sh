jq -s '[
  .[1][] as $golden | 
  .[0].articles[] | 
  select(.title == $golden.title) | 
  {
    title,
    golden_standard_places: $golden.places,
    found_places: .places
  }
]' places.json golden-standard-places.json 