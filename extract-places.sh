cat golden-standard-example-places-to-extract.json | jq '.[].title' | llm --schema places.schema.json "
Extract places mentioned in these articles titles.
Keep the following guidelines in mind:
- only extract municipalities (e.g. Gent), regions (e.g. Europa) and countries (e.g. Nederland),
other places (e.g. Pannenhuis which refers to a specific place) shouldn't be extracted
- always use the full name of the place: e.g. say Nederland instead of NL
- always give the name of the place in Dutch, even if the place name is in a different language in the title
- if the name of the place is given in adjective form (e.g. Nederlands instead of Nederland), use the noun form (e.g. Nederland instead of Nederlands)
- name place in organisation (e.g. Gent in UGent) should not be extracted as a place. For example Europese Commissie and EU are organisations as well, 
so in these cases you shouldn't extract Europa as a place.
- if someone is mentioned by nationality (e.g. Belg meaning someone from Belgium), do extract the place as a country
"