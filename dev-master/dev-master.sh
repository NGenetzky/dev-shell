
build()
{
    sudo docker build \
        -t dev-master:0.1 ./dev-master
}

run()
{
    sudo docker run \
        -it \
        -v $(pwd):/mnt/pwd \
        dev-master:0.1

}

