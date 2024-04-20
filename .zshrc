# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# For zsh powerlevel10k zsh-theme
source ~/.local/share/zsh/powerlevel10k/powerlevel10k.zsh-theme

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# For zsh zsh-syntax-highlighting
source ~/.local/share/zsh//zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# For zsh auto-completion
source ~/.local/share/zsh/zsh-autosuggestions/zsh-autosuggestions.zsh

# for zsh vi mode
source ~/.local/share/zsh/zsh-vi-mode/zsh-vi-mode.zsh


# for aliases 
for f in ~/.config/zsh/aliases/*; do source "$f"; done

PATH=$PATH:~/.local/bin

