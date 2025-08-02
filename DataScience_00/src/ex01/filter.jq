#!/usr/bin/env jq -rf

["id","created_at","name","has_test","alternate_url"],
(.items[] | [
.id,
.published_at,
.name,
.has_test,
.alternate_url // ""
]) | @csv