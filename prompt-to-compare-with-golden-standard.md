I've got 2 arrays: `places.json` and `golden-standard-places.json`.

`places.json` is an object and looks like this:

```
{
    "articles": [
        {
            "title": "Voormalig burgemeester van Staden Francesco Vanderjeugd veroordeeld tot 1 jaar cel met uitstel voor verduistering en belangenvermenging",
            "places": [
                {
                    "name": "Staden",
                    "type": "municipality"
                }
            ]
        },
        ...
    ]
}
```

`golden-standard-places.json` looks like this:

```
[
    {
        "title": "Voormalig burgemeester van Staden Francesco Vanderjeugd veroordeeld tot 1 jaar cel met uitstel voor verduistering en belangenvermenging  ",
        "places": [
            {
                "name": "Staden",
                "type": "municipality"
            }
        ],
        "difficulty": "Long title."
    },
    ...
]
```

The difference between both files are:
- in `places.json` the array we're interested in is within the `articles` key
- `golden-standard-places.json` has a difficulty key which `places.json` doesn't have

Both files contain the same articles in the same order (identified by `title`).

I want to use `jq` to create an array like this (example for just one article but real result is a complete array):

```
[
    {
        "title": "Voormalig burgemeester van Staden Francesco Vanderjeugd veroordeeld tot 1 jaar cel met uitstel voor verduistering en belangenvermenging",
        "golden_standard_places": {
                "name": "Staden",
                "type": "municipality"
            },
        "found_places": {
                "name": "Staden",
                "type": "municipality"
            }
    },
    ...
]
```

`golden_standard_places` contains places from `golden-standard-places.json`, `found_places` contains places from `places.json`.