# Add krew to path
export PATH="${KREW_ROOT:-$HOME/.krew}/bin:$PATH"

source <(kubectl completion zsh)
alias k=kubectl
complete -F __start_kubectl k

alias kn='kubens'
alias kc='kubectx'
kcn() {
  echo "Switching to $1/$2"
  kubectx $1
  kubens $2
}

# Set default editor to nano
export KUBE_EDITOR=nano
