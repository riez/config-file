alias vim="nvim"
alias vi="nvim"
alias oldvim="\vim"

# Theme
set -g theme_color_scheme terminal-dark
set -g fish_prompt_pwd_dir_length 1
set -g theme_display_user yes
set -g theme_hide_hostname no
set -g theme_hostname always

# Env
set -g -x CC gcc-11
set -g -x GOPATH /Users/seriez/go
set -g -x ANDROID_SDK_ROOT /Users/seriez/Library/Android/sdk
set -x PATH $PATH /usr/local/go/bin $GOPATH/bin
set -x PATH $PATH /Users/seriez/Library/Python/2.7/bin
set -x PATH $PATH $ANDROID_SDK_ROOT/emulator $ANDROID_SDK_ROOT/tools

if status is-interactive
    # Commands to run in interactive sessions can go here
end

switch (uname)
  case Darwin
    source (dirname (status --current-filename))/config-osx.fish
  case Linux
    # Do nothing
  case '*'
    source (dirname (status --current-filename))/config-windows.fish
end

eval (perl -I$HOME/perl5/lib/perl5 -Mlocal::lib=$HOME/perl5)
