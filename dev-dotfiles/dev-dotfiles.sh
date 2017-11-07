
build()
{
    sudo docker build \
        -t dev-dotfiles:0.1 ./dev-dotfiles
}

run()
{
    sudo docker run \
        -it \
        -v $(pwd):$(pwd) \
        dev-dotfiles:0.1

}

