#!/usr/bin/env bash
set -o errexit -o errtrace -o noclobber -o nounset -o pipefail
IFS=$'\n\t'

script_dir=$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)
project_dir=$(cd "$(dirname "$script_dir")" && pwd)

cd "$project_dir" || exit

# String type (drupal or symfony) from start of name
function strip-project-type() {
  name=$1

  if [[ "$name" =~ ^(drupal-|symfony-)(.+) ]]; then
    name="${BASH_REMATCH[2]}"
  fi

  echo $name
}

find templates -type l -delete

for template_dir in templates/*; do
  template_name=$(basename "$template_dir")

  echo "$template_name"
  echo

  project_type=""
  if [[ "$template_name" =~ ^drupal- ]]; then
    project_type="drupal"
  elif [[ "$template_name" =~ ^symfony- ]]; then
    project_type="symfony"
  else
    (>&2 echo "Unknown template type: $template_name")
    exit 1
  fi

  for f in github/workflows/*.yaml; do
    file_name=$(basename "$f")
    source_file_name=''
    if [[ "$file_name" =~ ^drupal- ]]; then
      if [[ "$project_type" == "drupal" ]]; then
        source_file_name="$file_name"
      fi
    elif [[ "$file_name" =~ ^symfony- ]]; then
      if [[ "$project_type" == "symfony" ]]; then
        source_file_name="$file_name"
      fi
    else
      source_file_name="$file_name"
    fi

    if [[ -n "$source_file_name" ]]; then
      # Link GitHub Actions workflow file
      target_dir="$template_dir/.github/workflows"
      mkdir -p "$target_dir"
      ln -sf "../../../../github/workflows/$source_file_name" "$target_dir/$(strip-project-type "$source_file_name")"

      # Check if we need a language configuration as well
      language_name=${source_file_name%.yaml}
      config_dir=""
      # Check for project_type specific configuration first.
      if [ -d "config/$project_type/$language_name" ]; then
        config_dir="config/$project_type/$language_name"
      elif [ -d "config/$language_name" ]; then
        config_dir="config/$language_name"
      fi

      if [[ -n "$config_dir" ]]; then
        # Some config files are hidden
        GLOBIGNORE=".:.."
        for config_file in "$config_dir"/*; do
          if [ -f "$config_file" ]; then
            ln -sf "../../$config_file" "$template_dir/"
          fi
        done
      fi
    fi
  done

  find "$template_dir" -type l -ls
  echo
done

# Generate Mermaid graph showing links
mermaid_file_name="$script_dir/links.mermaid"

cat >| "$mermaid_file_name" <<'EOF'
graph TD
EOF
for link in $(find templates -type l); do
  link_id=$(base64 <<< $link)
  link_id=${link_id//=}

  target=$(readlink $link)
  target_id=$(base64 <<< $target)
  target_id=${target_id//=}
  echo "  $link_id[$link] --> $target_id[$target]" >> "$mermaid_file_name"
done
