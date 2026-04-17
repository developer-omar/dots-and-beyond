# Configuration for starship

## Prerequisites

- A [Nerd Font](https://www.nerdfonts.com/) installed in your system and enabled in your terminal.

This configuration works with zsh and [Oh My Zsh framework](https://ohmyz.sh).

1. Install [starship](https://starship.rs/guide/).

    ```bash
    curl -sS https://starship.rs/install.sh | sh
    ```

2. Delete the oh-my-zsh selected theme in ~/.zshrc

    > ZSH_THEME=""

3. You can follow one of the following options:

- You can use any of [configuration presets for Starship](https://starship.rs/presets/), for example:

    ```bash
    starship preset pure-preset -o ~/.config/starship.toml
    ```

- You can put starship.toml into ~/.config/

4. Adding the following line at the end of file .zshrc

    > eval "$(starship init zsh)"
