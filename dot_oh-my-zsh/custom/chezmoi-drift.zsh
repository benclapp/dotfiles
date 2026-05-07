if (( $+commands[chezmoi] )); then
  local _chezmoi_drift
  _chezmoi_drift="$(chezmoi status 2>/dev/null)"
  if [[ -n "$_chezmoi_drift" ]]; then
    print -P "%F{yellow}Chezmoi drift:%f"
    print -r -- "$_chezmoi_drift"
  fi
  unset _chezmoi_drift
fi
