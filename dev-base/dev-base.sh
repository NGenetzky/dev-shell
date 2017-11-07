
build()
{
    sudo docker build \
        -t dev-base:0.1 ./dev-base
}

run()
{
    sudo docker run \
        -it \
        -v $(pwd):$(pwd) \
        dev-base:0.1

}

