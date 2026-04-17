# My Zellij Configuration

## Requirements

install essential software tools and libraries needed to compile software from source code

```bash
sudo apt install build-essential
```

## Installation

1. Install [Zellij](https://zellij.dev/documentation/installation) according
to your operating system,I installed this with
Rust-Cargo with the following commands:

    ```bash
    #install rustup, rust and cargo
    curl https://sh.rustup.rs -sSf | sh
    ```

    ```bash
    cargo install --locked zellij
    ```

2. Clone the repository into the ~/.config or make a symbolic link using the following command:

    ```bash
    ln -s /path/to/local/copy zellij
    ```

3. (Optional) Place the following code at the end of the file ~/.zshrc
or ~/.bashrc to [integrate zellij in all your terminals](https://zellij.dev/documentation/integration)

    ```bash
    echo 'eval "$(zellij setup --generate-auto-start bash)"' >> ~/.bashrc
    ```

    ```bash
    echo 'eval "$(zellij setup --generate-auto-start zsh)"' >> ~/.zshrc
    ```

4. (Optional) Instead of following the step 2, you may place the following code at the end of file ~/.zshrc or ~/.bashrc, 
it is only for a determinate terminal (e.g. I place Zellij in Wezterm with zsh)

    ```bash
    if [[ "$TERM_PROGRAM" == "WezTerm" ]]; then
        eval "$(zellij setup --generate-auto-start zsh)"
    fi
    ```
