if [ -d "/home/benc/go/bin/gcx" ]; then
  gcx completion zsh > "${fpath[1]}/_gcx"
fi
