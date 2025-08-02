#!/bin/bash

curl -s "https://api.hh.ru/vacancies?text=Data%20scientist&per_page=20" \
| jq '{
  "found": .found,
  "pages": .pages,
  "items": [.items[] | {
    "id": .id,
    "name": .name,
    "salary": {
      "from": (.salary.from // null),
      "to": (.salary.to // null),
      "currency": (.salary.currency // null),
      "gross": (.salary.gross // null)
    },
    "employer": .employer.name,
    "area": .area.name,
    "published_at": .published_at,
    "experience": .experience.name,
    "employment": .employment.name,
    "alternate_url": .alternate_url,
    "has_test": .has_test
  }]
}' > hh.json

