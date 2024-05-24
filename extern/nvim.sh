function external_nvim()
{
    local nvim_dir="neovim"
    local nvim_url="https://github.com/neovim/neovim.git"

    git clone --branch=stable --depth 1 "$nvim_url" "$nvim_dir"

    cd "$nvim_dir"
    make CMAKE_BUILD_TYPE=RelWithDebInfo CMAKE_INSTALL_PREFIX=~/.local
    make install
    cd ..

    rm -rf "$nvim_dir" # delete source code
}

external_nvim
