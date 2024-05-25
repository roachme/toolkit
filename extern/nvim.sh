function external_nvim()
{
    local nvim_dir="neovim"
    local nvim_url="https://github.com/neovim/neovim.git"
    local packer_dir="~/.local/share/nvim/site/pack/packer/start/packer.nvim"
    local packer_url="https://github.com/wbthomason/packer.nvim"


    git clone --branch=stable --depth 1 "$nvim_url" "$nvim_dir"

    cd "$nvim_dir"
    make CMAKE_BUILD_TYPE=RelWithDebInfo CMAKE_INSTALL_PREFIX=~/.local
    make install
    cd ..

    rm -rf "$nvim_dir" # delete source code
    git clone --depth 1 "$packer_url" "$packer_dir"
}

external_nvim
