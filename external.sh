function prepare()
{
    mkdir -p ~/.local/bin
}

function external_nvim()
{
    git clone --depth 1 git@github.com:neovim/neovim.git && cd nvim
    git checkout stable
    make CMAKE_BUILD_TYPE=RelWithDebInfo CMAKE_INSTALL_PREFIX=~/.local/bin
    make install

    # clean up
    cd .. && rm -rf nvim
}


