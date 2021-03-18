local current_dir='$(collapse_pwd)'
local git_info='$(git_prompt_info)'
local prompt_char='$(prompt_char)'

PROMPT="$FG[239]%t %{$terminfo[bold]$FG[040]%}${current_dir}%{$reset_color%}${git_info} %{$FG[239]%}
: %{$reset_color%} "

ZSH_THEME_GIT_PROMPT_PREFIX=" %{$FG[239]%}branch%{$reset_color%} %{$fg[255]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg[red]%}✘✘✘"
ZSH_THEME_GIT_PROMPT_CLEAN="%{$FG[040]%}✔"

function collapse_pwd {
    echo $(pwd | sed -e "s,^$HOME,~,")
    }
