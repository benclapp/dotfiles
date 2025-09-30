gpsupmr() {
  echo -n "Enter merge request title (leave empty to skip): "
  read title

  echo -n "Enter merge request description (leave empty to skip): "
  read description

  local mr_opts="-o merge_request.create"

  if [[ -n "$title" ]]; then
    mr_opts+=" -o merge_request.title=\"$title\""
  fi

  if [[ -n "$description" ]]; then
    mr_opts+=" -o merge_request.description=\"$description\""
  fi

  eval "git push --set-upstream origin $(git_current_branch) $mr_opts"
}
