#!/usr/bin/env bash

set -euo pipefail
set -x

# HTML will be put here

rm -fr public
mkdir public

# We assemble the Markdown tree in content for hugo to ingest.
rm -rf content

cp -r src content

# If we need to do any link munging from the stuff for just this repo, do it here

# Hand-edited files use bare relative links, e.g. [C-Kermit](ckermit) or
# [C-Kermit](ckermit#anchor). Convert these to Hugo relref shortcodes.
find content -name '*.md' -exec \
    sed -i -E -e 's/\]\(([A-Za-z0-9_-]+)#([A-Za-z0-9_-]+)\)/]({{< relref "\1" >}}#\2)/g' \
    -e 's/\]\(([A-Za-z0-9_-]+)\)/]({{< relref "\1" >}})/g' {} +

# Prep the content brought in from the ckermit repo
cp -r external/ckermit/doc content/ckermit

# The ckermit docs carry no Hugo front matter at all, so Hugo has no title
# for them (breaking <title>, the search index, etc). Give every page a
# title (from its first top-level Markdown heading) and the same
# slug/author/tags/draft front matter used elsewhere on this site.
#
# type is forced to "page" because the theme's post_metadata partial (the
# "Published At"/"Tagged with"/"Share with" block) only shows for pages
# whose Type isn't "page". Pages elsewhere on this site live directly under
# content/, so Hugo defaults their Type to "page" and the block never
# shows. Pages under content/ckermit default to Type "ckermit" instead
# (the section name), so without this override they'd show that block.
for f in content/ckermit/*.md; do
  base=$(basename "$f" .md)
  title=$(grep -m1 '^# ' "$f" | sed -E 's/^# +//')
  slug=""
  extra=""
  if [ "$base" = "README" ]; then
    # README.md becomes the section index (_index.md below). Its URL
    # (/ckermit/) comes from the directory, not a slug, so don't set one.
    # Force the single-page layout so Hugo renders the README content
    # itself instead of its auto-generated list of child pages.
    extra='
layout = "single"'
  else
    slug="
slug = \"$base\""
  fi
  tmp=$(mktemp)
  {
    printf '+++\n'
    printf 'title = "%s"\n' "$title"
    printf 'type = "page"\n'
    printf 'author = ["John Goerzen"]%s\n' "$slug"
    printf 'tags = ["public"]\n'
    printf 'draft = false%s\n' "$extra"
    printf '+++\n'
    cat "$f"
  } > "$tmp"
  mv "$tmp" "$f"
done

# Now perform any edits that impact contact/ckermit or all of content/.
mv content/ckermit/README.md content/ckermit/_index.md

# The ckermit docs were written for Github Markdown and link directly to
# other .md files, e.g. [x](help-reference.md) or [x](help-reference.md#anchor).
# Convert these to Hugo relref shortcodes too.
find content/ckermit -name '*.md' -exec \
    sed -i -E -e 's/\]\(([A-Za-z0-9_-]+)\.md#([A-Za-z0-9_-]+)\)/]({{< relref "\1">}}#\2)/g' \
    -e 's/\]\(([A-Za-z0-9_-]+)\.md\)/]({{< relref "\1">}})/g' {} +


# And run the regeneration
hugo --gc
