
GIT_ROOT="$(git rev-parse --show-toplevel)"

build()
{
    sudo docker build \
        -t dev-base:0.0.2 \
        "${GIT_ROOT}/dev-base/dev-base"
}

run()
{
    sudo docker run \
        -it \
        -v $(pwd):/mnt/pwd \
        dev-base:0.0.2

}

