# CRUNCH - created from Steve Eley's cat waxing.
# Initially hacked from the Dallas theme. Thanks, Dallas Reedy.
#
# This theme assumes you do most of your oh-my-zsh'ed "colorful" work at a single machine,
# and eschews the standard space-consuming user and hostname info.  Instead, only the
# things that vary in my own workflow are shown:
#
# * The time (not the date)
# * The ruby version
# * The current directory
# * The Git branch and its 'dirty' state
#
# Colors are at the top so you can mess with those separately if you like.
# For the most part I stuck with Dallas's.

CRUNCH_BRACKET_COLOR="%{$fg[white]%}"
RUBY_COLOR="%{$fg[magenta]%}"
CRUNCH_DIR_COLOR="%{$fg[cyan]%}"
CRUNCH_GIT_BRANCH_COLOR="%{$fg[green]%}"
CRUNCH_GIT_CLEAN_COLOR="%{$fg[green]%}"
CRUNCH_GIT_DIRTY_COLOR="%{$fg[red]%}"
HOSTNAME_COLOR="%{$fg[yellow]%}"
BAR="$CRUNCH_BRACKET_COLOR|"

# These Git variables are used by the oh-my-zsh git_prompt_info helper:
ZSH_THEME_GIT_PROMPT_PREFIX="$CRUNCH_BRACKET_COLOR:$CRUNCH_GIT_BRANCH_COLOR"
ZSH_THEME_GIT_PROMPT_SUFFIX=""
ZSH_THEME_GIT_PROMPT_CLEAN=" $CRUNCH_GIT_CLEAN_COLOR✓"
ZSH_THEME_GIT_PROMPT_DIRTY=" $CRUNCH_GIT_DIRTY_COLOR✗"

# Our elements:
RUBY_="$RUBY_COLOR\${\$(rbenv version-name)}$BAR"
CRUNCH_DIR_="$CRUNCH_DIR_COLOR%~\$(git_prompt_info) "
CRUNCH_PROMPT="$CRUNCH_BRACKET_COLOR➭ "
END_PROMPT="🦙 %{$reset_color%}"

USER_PROMPT="$HOSTNAME_COLOR$USER$BAR%{$reset_color%}"

# Put it all together!
PROMPT="$USER_PROMPT$RUBY_$CRUNCH_DIR_$END_PROMPT"
