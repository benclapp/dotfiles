if [ -d "/opt/homebrew/opt/node@22" ]; then
  export PATH="$PATH:/opt/homebrew/opt/node@22/bin"

  # For compilers
  export LDFLAGS="-L/opt/homebrew/opt/node@22/lib"
  export CPPFLAGS="-I/opt/homebrew/opt/node@22/include"
fi
