# Configurations for zsh

1. Install zsh and git and change to zsh

    ```bash
    sudo apt install git zsh
    ```

2. Install [Oh My Zsh](https://ohmyz.sh/#install)

    ```bash
    sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
    ```

3. To set up the theme, you can follow one of the following options:

    - You can use any of [oh-my-zsh themes](https://github.com/ohmyzsh/ohmyzsh/wiki/themes)
    and after that edit ~/.zshrc and set your selected theme, for example:

      > ZSH_THEME="agnoster"

    - Put xiong-chiamiov-custom.zsh-theme into ~/.oh-my-zsh/themes/ after that edit
    ~/.zshrc and set the selected the theme:

      > ZSH_THEME="xiong-chiamiov-custom"

4. Install plugins: [zsh-autosuggestions](https://github.com/zsh-users/zsh-autosuggestions) and [zsh-syntax-highlighting](https://github.com/zsh-users/zsh-syntax-highlighting)

    ```bash
    git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
    ```

    ```bash
    git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
    ```

5. Edit ~/.zshrc and set plugins

    ```bash
    plugins=(
    git
    zsh-autosuggestions
    zsh-syntax-highlighting
    history-substring-search
    )
    ```

6. Refresh configuration file

    ```bash
    source .zshrc
    ```

## Optional installations

1. Install [zoxide](https://github.com/ajeetdsouza/zoxide) (It remembers which directories you use most frequently, so you can "jump" to them in just a few keystrokes), for example the installation in ubuntu is:

    ```bash
    sudo apt install zoxide
    ```

2. Install [Atuin](https://docs.atuin.sh/guide/installation/) (Atuin replaces your
existing shell history with a SQLite database, and records additional context
for your commands)

    ```bash
    curl --proto '=https' --tlsv1.2 -LsSf https://setup.atuin.sh | sh
    ```

3. Adding the following lines to ~/.zshrc

    ```bash
    echo 'eval "$(zoxide init zsh)"' >> ~/.zshrc
    ```

    ```bash
    echo 'eval "$(atuin init zsh)"' >> ~/.zshrc
    ```

4. Refresh configuration file

    ```bash
    source .zshrc
    ```
