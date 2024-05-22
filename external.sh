function prepare()
{
    mkdir -p ~/.local/bin
}

function external_nvim()
{
    git clone --depth 1 https://github.com/neovim/neovim.git && cd nvim
    git checkout stable
    make CMAKE_BUILD_TYPE=RelWithDebInfo CMAKE_INSTALL_PREFIX=~/.local
    make install

    # clean up
    cd .. && rm -rf nvim
}
